import sys
import os
import subprocess
import json
import gzip
import threading

file_name = sys.argv[2]
count = int(sys.argv[1])
out_file = file_name.split("/")[-1][:-5] + ".gz"

def make_file(file_name, count):
	os.system('rm aang*')
	os.system('rm log*')
	os.system('rm *.txt')
	os.system('rm *.txt.gz')
	os.system('cp original/* .')
	os.system('cp '+ file_name + ' ./aang.wasm')
	os.system('wasabi aang.wasm')
	os.system('mv aang.wasm aang.orig.wasm')
	os.system('cp out/* .')
	os.system('cp out/* .')
	os.system('rm -r out/')
	os.system('gsed -i \'/<script async type="text\/javascript" src="aang.js"><\/script>/a <script src="aang.wasabi.js"></script>\' aang.html')
	if(count == -1):
		os.system('gsed -i \'/<script src="aang.wasabi.js"><\/script>/a <script src="log-all.js"></script>\' aang.html')
	else:
		os.system('gsed -i \'/<script src="aang.wasabi.js"><\/script>/a <script src="log-line.js"></script>\' aang.html')
	os.system("wasm-objdump -d " + file_name + "> aang.dump")
	os.system('gsed -i \'s/AANG_LINE_VALUE/' + str(count) + '/g\' log-line.js')
	os.system('gsed -i \'s/AANG_BLOCK_SIZE/' + str(min(max(count//10,1),1000)) + '/g\' log-line.js')
	os.system('gsed -i \'s/AANG_BLOCK_SIZE/' + str(min(max(count//10,1),1000)) + '/g\' log-all.js')
	
def process(s):
	s = s.replace(" ", "")
	s = s.replace("\\n","")
	s = s.replace("\\","")
	s = s.replace("\"[","[")
	s = s.replace("]\"","]")
	s = s.split(":[")
	if len(s)<2:
		return None, []
	s[0] = s[0].replace("\"", "").replace(" ", "")
	num = int(s[0])
	l = "["+s[1]
	l = l.strip().strip(",")
	try:
		l = json.loads(l)
	except:
		print("ERROR " ,l)
	return num, l

def get_loc(fun_num, instr_num):
	dump_file = open("aang.dump")
	dump_lines = dump_file.readlines()
	for i in range(len(dump_lines)):
		if ("func[" + str(fun_num) + "]") in dump_lines[i]:
			i = i + 1
			while("local[" in dump_lines[i]):
				i = i + 1
			while("func[" in dump_lines[i+instr_num]):
				i = i - 1
			return str(int("0x" + str(dump_lines[i+instr_num].split(":")[0].strip()),16))
			break

def get_else(fun_num, instr_num):
	flag = -1
	dump_file = open("aang.dump")
	dump_lines = dump_file.readlines()
	i = 0
	while i < (len(dump_lines)):
		lines = dump_lines[i]
		if ("func[" + str(fun_num) + "]") in lines:
			i = i + 1
			lines = dump_lines[i]
			while("local[" in lines):
				i = i + 1
				lines = dump_lines[i]
			i = i + instr_num
			lines = dump_lines[i]
			
			if("if" not in lines):
				raise Exception('Not if')
			for j in range(len(lines)):
				if(lines[j]=='i' and lines[j+1]=='f'):
					flag = j
					break
		elif(flag>-1):
			if("end" in lines or "else" in lines):
				if(lines[flag:flag+3]=='end' or lines[flag:flag+4]=='else'):
					while("func[" in dump_lines[i+1]):
						i = i - 1
					return str(int("0x" + str(dump_lines[i+1].split(":")[0].strip()),16))
		i = i + 1
	return str(int("0x" + str(dump_lines[j+1].split(":")[0].strip()),16))


def get_end(fun_num, instr_num):
	flag = -1
	dump_file = open("aang.dump")
	dump_lines = dump_file.readlines()
	i = 0
	while i < (len(dump_lines)):
		lines = dump_lines[i]
		if ("func[" + str(fun_num) + "]") in lines:
			i = i + 1
			lines = dump_lines[i]
			while("local[" in lines):
				i = i + 1
				lines = dump_lines[i]
			i = i + instr_num
			lines = dump_lines[i]
			
			if("if" not in lines):
				raise Exception('Not if')
			for j in range(len(lines)):
				if(lines[j]=='i' and lines[j+1]=='f'):
					flag = j
					break
		elif(flag>-1):
			if("end" in lines):
				if(lines[flag:flag+3]=='end'):
					while("func[" in dump_lines[i+1]):
						i = i - 1
					return str(int("0x" + str(dump_lines[i+1].split(":")[0].strip()),16))
		i = i + 1
	return str(int("0x" + str(dump_lines[j+1].split(":")[0].strip()),16))

mapping = {"i32.clz" : "LZCNT","i32.ctz" : "TZCNT","i32.popcnt" : "POPCNT","i32.add" : "ADD","i32.sub" : "SUB","i32.mul" : "IMUL","i32.div_s" : "IDIV","i32.div_u" : "DIV","i32.rem_s" : "FPREM","i32.rem_u" : "FPREM1","i32.and" : "AND","i32.or" : "OR","i32.xor" : "XOR","i32.shl" : "SHL","i32.shr_s" : "SAR","i32.shr_u" : "SHR","i32.rotl" : "ROL","i32.rotr" : "ROR","i32.eqz" : "CMP","i32.eq" : "CMP","i32.ne" : "FICOM","i32.lt_s" : "FICOM","i32.lt_u" : "FICOM","i32.gt_s" : "FICOM","i32.gt_u" : "FICOM","i32.le_s" : "FICOM","i32.le_u" : "FICOM","i32.ge_s" : "FICOM","i32.ge_u" : "FICOM","i32.const" : "EQU","i32.trunc_f32_s" : "CVTTSD2SI","i32.trunc_f32_u" : "VCVTSS2USI","i32.trunc_f64_s" : "CVTTSD2SI","i32.trunc_f64_u" : "VCVTSS2USI","i64.clz" : "LZCNT","i64.ctz" : "TZCNT","i64.popcnt" : "POPCNT","i64.add" : "ADD","i64.sub" : "SUB","i64.mul" : "IMUL","i64.div_s" : "IDIV","i64.div_u" : "DIV","i64.rem_s" : "FPREM","i64.rem_u" : "FPREM1","i64.and" : "AND","i64.or" : "OR","i64.xor" : "XOR","i64.shl" : "SHL","i64.shr_s" : "SAR","i64.shr_u" : "SHR","i64.rotl" : "ROL","i64.rotr" : "ROR","i64.eqz" : "CMP","i64.eq" : "CMP","i64.ne" : "FICOM","i64.lt_s" : "FICOM","i64.lt_u" : "FICOM","i64.gt_s" : "FICOM","i64.gt_u" : "FICOM","i64.le_s" : "FICOM","i64.le_u" : "FICOM","i64.ge_s" : "FICOM","i64.ge_u" : "FICOM","i64.const" : "MOV","i64.trunc_f32_s" : "CVTTSS2SI","i64.trunc_f32_u" : "CVTTSS2SI","i64.trunc_f64_s" : "CVTTSD2SI","i64.trunc_f64_u" : "CVTTSD2SI","i64.reinterpret_f32" : "CVTTSS2SI","i64.reinterpret_f64" : "CVTTSD2SI","f32.abs" : "FABS","f32.neg" : "NEG","f32.sqrt" : "FSQRT","f32.ceil" : "ROUNDPD","f32.floor" : "ROUNDPD","f32.trunc" : "FRNDINT","f32.nearest" : "FRNDINT","f32.add" : "FADD","f32.sub" : "FSUB","f32.mul" : "FMUL","f32.div" : "FDIV","f32.min" : "PMINSW","f32.max" : "PMANSW","f32.copysign" : "CPYS","f32.eq" : "FCOM","f32.ne" : "FCOM","f32.lt" : "FCOM","f32.gt" : "FCOM","f32.le" : "FCOM","f32.ge" : "FCOM","f32.demote_f64" : "CVTSD2SS","f32.convert_i32_s" : "VCVTUSI2SS","f32.convert_i32_u" : "VCVTUSI2SD","f32.convert_i64_s" : "VCVTUSI2SS","f32.convert_i64_u" : "VCVTUSI2SD","f32.reinterpret_i32" : "VCVTUSI2SS","f32.reinterpret_i64" : "VCVTUSI2SD","f64.abs" : "FABS","f64.neg" : "NEG","f64.sqrt" : "FSQRT","f64.ceil" : "ROUNDPD","f64.floor" : "ROUNDPD","f64.trunc" : "FRNDINT","f64.nearest" : "FRNDINT","f64.add" : "FADD","f64.sub" : "FSUB","f64.mul" : "FMUL","f64.div" : "FDIV","f64.min" : "MINSD","f64.max" : "MAXSD","f64.eq" : "FCOM","f64.ne" : "FCOM","f64.lt" : "FCOM","f64.gt" : "FCOM","f64.le" : "FCOM","f64.ge" : "FCOM","i32.load offset" : "FILD","i32.load align" : "FILD","i32.load8_s offset" : "FILD","i32.load8_s align" : "FILD","i32.load8_u offset" : "FILD","i32.load8_u align" : "FILD","i32.load16_s offset" : "FILD","i32.load16_s align" : "FILD","i32.load16_u offset" : "FILD","i32.load16_u align" : "FILD","i32.store offset" : "FIST","i32.store align" : "FIST","i32.store8_s offset" : "FIST","i32.store8_s align" : "FIST","i32.store8_u offset" : "FIST","i32.store8_u align" : "FIST","i32.store16_s offset" : "FIST","i32.store16_s align" : "FIST","i32.store16_u offset" : "FIST","i32.store16_u align" : "FIST","i64.load offset" : "FILD","i64.load align" : "FILD","i64.store offset" : "FIST","i64.store align" : "FIST","i64.load32_s offset" : "FILD","i64.load32_s align" : "FILD","i64.load32_u offset" : "FILD","i64.load32_u align" : "FILD","i64.store32 offset" : "FIST","i64.store32 align" : "FIST","f32.load offset" : "FLD","f32.load align" : "FLD","f32.store offset" : "FST","f32.store align" : "FST","f64.load offset" : "FLD","f64.load align" : "FLD","f64.store offset" : "FST","f64.store align" : "FST"}

def convert(t, stack_size):
	func_num = int(t[1]['func'])
	if(func_num not in stack_size.keys()):
		stack_size[func_num] = 0
	loc = str(get_loc(t[1]['func'], t[1]['instr']))
	func_add = (t[1]['func']+1)*32768
	array_add = func_add + 8192
	if t[0]=='nop':
		return ((loc+" "+str(get_type(t[0]))+" "+"NOP"), stack_size)
	elif t[0]=='unreachable':
		return ((loc+" "+str(get_type(t[0]))+" "+"UD2"), stack_size)
	elif t[0]=='if_':
		end_add = str(get_else(t[1]['func'], t[1]['instr']))
		if t[2]:
			# branch not taken
			s=(loc+" "+str(27)+" JMP "+str(int(end_add)-int(loc)))
			s+="\n"
			s+=(loc+" "+str(5)+" "+end_add)
			return s, stack_size
		else:
			# branch taken
			s=(loc+" "+str(27)+" JMP "+str(int(end_add)-int(loc)))
			s+="\n"
			s+=(loc+" "+str(4)+" "+end_add)
			return s, stack_size
	elif t[0]=='call_pre':
		jump_loc = get_loc(int(t[2]),1)
		if(jump_loc != None):
			s = (loc+" "+str(27)+" JMP "+str(int(jump_loc)-int(loc)))
			s+="\n"
			s+=(loc+" "+str(4)+" "+jump_loc)
			return s,stack_size
		else:
			return str(loc + " " + str(27) + " NOP"), stack_size
	elif t[0]=='end':
		if t[2]=='if':
			end_add = get_end(t[3]['func'], t[3]['instr'])
			s = (loc+" "+str(27)+" JMP "+str(int(end_add)-int(loc)))
			s+="\n"
			s+=(loc+" "+str(4)+" "+end_add)
			return s, stack_size
		elif t[2]=='loop':
			loop_add = get_loc(t[3]['func'], t[3]['instr'])
			s = (loc + " "+str(27)+" LOOP "+loop_add)
			return s, stack_size
	elif t[0]=='br':
		loc2 = get_loc(t[2]['location']['func'], t[2]['location']['instr'])
		return ((loc+" "+str(4)+" "+loc2), stack_size)
	elif t[0]=='br_if':
		if t[3]:
			loc2 = get_loc(t[2]['location']['func'], t[2]['location']['instr'])
			return ((loc+" "+str(4)+" "+loc2), stack_size)
	elif t[0]=='drop':
		if stack_size[func_num]!=0:
			s = (loc+" "+str(27)+" "+str(func_add + stack_size[func_num]*32)+" EQU "+str(0))
			stack_size[func_num]-=1
			return s, stack_size
	elif t[0]=='select':
		value = t[3] if t[2] else t[4]
		s = (loc+" "+str(27)+" "+str(func_add + stack_size[func_num]*32)+" EQU "+str(value))
		stack_size[func_num]+=1
		return s, stack_size
	elif t[0]=='return_':
		s = (loc+" "+str(27)+" "+"RET")
		return s, stack_size
	elif t[0]=='const_':
		value = t[3]
		if not(type(value) is dict):
			s = (loc+" "+str(27)+" "+str(func_add + stack_size[func_num]*32)+" EQU "+str(value))
			stack_size[func_num]+=1
			return s, stack_size
		else:
			s = (loc+" "+str(27)+" "+str(func_add + stack_size[func_num]*32)+" EQU "+str(value['low']))
			stack_size[func_num]+=1
			return s, stack_size
	elif t[0]=='unary':
		op = t[2]
		if op in mapping:
			s = (loc+" "+str(27)+" "+ mapping[op]+" "+ str(3)+ " "+ str(0))
			return s, stack_size
	elif t[0]=='binary':
		op = t[2]
		num1 = str(t[3])
		num2 = str(t[4])
		if op in mapping:
			s = (loc+" "+str(27)+" "+mapping[op]+" "+num1+" "+num2)
			stack_size[func_num]-=1
			return s, stack_size
	elif t[0]=='load':
		s = (loc+" "+str(27)+" LW "+str(func_add+stack_size[func_num]*32)+" "+str(t[3]['addr']+array_add))
		s+="\n"
		s+=(loc+" "+str(2)+" "+str(t[3]['addr']+array_add))
		stack_size[func_num]+=1
		return s, stack_size
	elif t[0]=='store':
		s=(loc+" "+str(27)+" SW "+str(t[3]['addr']+array_add)+" "+str(func_add+stack_size[func_num]*32))
		s+="\n"
		s+=(loc+" "+str(3)+" "+str(t[3]['addr']+array_add))
		stack_size[func_num]-=1
		return s, stack_size
	elif t[0]=='local':
		localIndex = t[3]
		if t[2]=='local.get':
			s = (loc+" "+str(27)+" LW "+str(func_add+stack_size[func_num]*32)+" "+str(array_add+ localIndex*32))
			s+="\n"
			s+=(loc+" "+str(3)+" "+str(array_add+ localIndex*32))
			stack_size[func_num]+=1
			return s, stack_size
		elif t[2]=='local.set' or t[2]=='local.tee':
			s=(loc+" "+str(27)+" SW "+str(array_add+ localIndex*32)+" "+str(func_add+stack_size[func_num]*32))
			s+="\n"
			s+=(loc+" "+str(3)+" "+ str(array_add+ localIndex*32))
			stack_size[func_num]-=1
			return s, stack_size
	elif t[0]=='global':
		localIndex = t[3]
		if t[2]=='global.get':
			s=(loc+" "+str(27)+" LW "+str(func_add+stack_size[func_num]*32)+" "+str(localIndex*32))
			s+="\n"
			s+=(loc+" "+str(3)+" "+str(localIndex*32))
			stack_size[func_num]+=1
			return s, stack_size
		elif t[2]=='global.set' or t[2]=='local.tee':
			s=(loc+" "+str(27)+" SW "+str(localIndex*32)+" "+str(func_add+stack_size[func_num]*32))
			s+="\n"
			s+=(loc+" "+str(3)+" "+ str(localIndex*32))
			stack_size[func_num]-=1
			return s, stack_size
	return str(loc + " " + str(27) + " NOP"), stack_size

	trace = []
stack_size = dict()
semaphore = threading.Semaphore()
make_file(file_name,count)
wasm_process = subprocess.Popen(["emrun","aang.html"], stdout=subprocess.PIPE)
for line in iter(wasm_process.stdout.readline, b''):
	semaphore.acquire()
	line2 = line.decode("utf-8")
	num, l = process(line2)
	if(num != None):
		s,stack_size = convert(l,stack_size)
		if(s != ""):
			s = s + '\n'
			f = gzip.open(out_file, 'ab')
			f.write(s.encode())
			f.close()
	semaphore.release()
