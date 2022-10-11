RED='\033[0;31m'
NC='\033[0m' # No Color
# Contrast pattern mining, scalability test.
# First group of experiments: 100 dataset instances, varying class for contrast and support threshold.
printf "First group of experiments, scalability test, contrast patterns, 100 dataset instances, varying class for contrast and support threshold...\n"
# class in_sms
printf "${RED}Run clingo with class=in_sms, minSup=10(10 percent), maxLenght=3, minDiff=0, 100 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S-%N)".txt"
printf "class=in_sms minSup=10(10 percent), maxLenght=3, minDiff=0, 100 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_100.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_sms -c minSup=10 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
# 
printf "${RED}Run clingo with class=in_sms, minSup=20(20 percent), maxLenght=3, minDiff=0, 100 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S-%N)".txt"
printf "class=in_sms minSup=20(20 percent), maxLenght=3, minDiff=0, 100 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_100.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_sms -c minSup=20 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=in_sms, minSup=30(30 percent), maxLenght=3, minDiff=0, 100 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S-%N)".txt"
printf "class=in_sms minSup=30(30 percent), maxLenght=3, minDiff=0, 100 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_100.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_sms -c minSup=30 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=in_sms, minSup=40(40 percent), maxLenght=3, minDiff=0, 100 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S-%N)".txt"
printf "class=in_sms minSup=40(40 percent), maxLenght=3, minDiff=0, 100 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_100.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_sms -c minSup=40 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=in_sms, minSup=50(50 percent), maxLenght=3, minDiff=0, 100 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S-%N)".txt"
printf "class=in_sms minSup=50(50 percent), maxLenght=3, minDiff=0, 100 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_100.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_sms -c minSup=50 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
# class out_sms
printf "${RED}Run clingo with class=out_sms, minSup=10(10 percent), maxLenght=3, minDiff=0, 100 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S-%N)".txt"
printf "class=out_sms minSup=10(10 percent), maxLenght=3, minDiff=0, 100 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_100.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_sms -c minSup=10 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
# 
printf "${RED}Run clingo with class=out_sms, minSup=20(20 percent), maxLenght=3, minDiff=0, 100 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S-%N)".txt"
printf "class=out_sms minSup=20(20 percent), maxLenght=3, minDiff=0, 100 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_100.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_sms -c minSup=20 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=out_sms, minSup=30(30 percent), maxLenght=3, minDiff=0, 100 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S-%N)".txt"
printf "class=out_sms minSup=30(30 percent), maxLenght=3, minDiff=0, 100 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_100.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_sms -c minSup=30 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=out_sms, minSup=40(40 percent), maxLenght=3, minDiff=0, 100 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S-%N)".txt"
printf "class=out_sms minSup=40(40 percent), maxLenght=3, minDiff=0, 100 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_100.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_sms -c minSup=40 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=out_sms, minSup=50(50 percent), maxLenght=3, minDiff=0, 100 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S-%N)".txt"
printf "class=out_sms minSup=50(50 percent), maxLenght=3, minDiff=0, 100 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_100.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_sms -c minSup=50 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
# class in_call
printf "${RED}Run clingo with class=in_call, minSup=10(10 percent), maxLenght=3, minDiff=0, 100 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S-%N)".txt"
printf "class=in_call minSup=10(10 percent), maxLenght=3, minDiff=0, 100 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_100.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_call -c minSup=10 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
# 
printf "${RED}Run clingo with class=in_call, minSup=20(20 percent), maxLenght=3, minDiff=0, 100 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S-%N)".txt"
printf "class=in_call minSup=20(20 percent), maxLenght=3, minDiff=0, 100 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_100.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_call -c minSup=20 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=in_call, minSup=30(30 percent), maxLenght=3, minDiff=0, 100 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S-%N)".txt"
printf "class=in_call minSup=30(30 percent), maxLenght=3, minDiff=0, 100 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_100.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_call -c minSup=30 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=in_call, minSup=40(40 percent), maxLenght=3, minDiff=0, 100 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S-%N)".txt"
printf "class=in_call minSup=40(40 percent), maxLenght=3, minDiff=0, 100 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_100.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_call -c minSup=40 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=in_call, minSup=50(50 percent), maxLenght=3, minDiff=0, 100 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S-%N)".txt"
printf "class=in_call minSup=50(50 percent), maxLenght=3, minDiff=0, 100 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_100.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_call -c minSup=50 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
# class out_call
printf "${RED}Run clingo with class=out_call, minSup=10(10 percent), maxLenght=3, minDiff=0, 100 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S-%N)".txt"
printf "class=out_call minSup=10(10 percent), maxLenght=3, minDiff=0, 100 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_100.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_call -c minSup=10 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
# 
printf "${RED}Run clingo with class=out_call, minSup=20(20 percent), maxLenght=3, minDiff=0, 100 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S-%N)".txt"
printf "class=out_call minSup=20(20 percent), maxLenght=3, minDiff=0, 100 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_100.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_call -c minSup=20 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=out_call, minSup=30(30 percent), maxLenght=3, minDiff=0, 100 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S-%N)".txt"
printf "class=out_call minSup=30(30 percent), maxLenght=3, minDiff=0, 100 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_100.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_call -c minSup=30 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=out_call, minSup=40(40 percent), maxLenght=3, minDiff=0, 100 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S-%N)".txt"
printf "class=out_call minSup=40(40 percent), maxLenght=3, minDiff=0, 100 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_100.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_call -c minSup=40 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=out_call, minSup=50(50 percent), maxLenght=3, minDiff=0, 100 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S-%N)".txt"
printf "class=out_call minSup=50(50 percent), maxLenght=3, minDiff=0, 100 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_100.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_call -c minSup=50 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
# Second group of experiments: 1000 dataset instances, varying class for contrast and support threshold.
printf "Second group of experiments, scalability test, contrast patterns, 1000 dataset instances, varying class for contrast and support threshold...\n"
# class in_sms
printf "${RED}Run clingo with class=in_sms, minSup=100(10 percent), maxLenght=3, minDiff=0, 1000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=in_sms minSup=100(10 percent), maxLenght=3, minDiff=0, 1000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_1000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_sms -c minSup=100 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
# 
printf "${RED}Run clingo with class=in_sms, minSup=200(20 percent), maxLenght=3, minDiff=0, 1000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=in_sms minSup=200(20 percent), maxLenght=3, minDiff=0, 1000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_1000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_sms -c minSup=200 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=in_sms, minSup=300(30 percent), maxLenght=3, minDiff=0, 1000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=in_sms minSup=300(30 percent), maxLenght=3, minDiff=0, 1000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_1000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_sms -c minSup=300 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=in_sms, minSup=400(40 percent), maxLenght=3, minDiff=0, 1000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=in_sms minSup=400(40 percent), maxLenght=3, minDiff=0, 1000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_1000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_sms -c minSup=400 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=in_sms, minSup=500(50 percent), maxLenght=3, minDiff=0, 1000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=in_sms minSup=50(50 percent), maxLenght=3, minDiff=0, 1000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_1000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_sms -c minSup=500 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
# class out_sms
printf "${RED}Run clingo with class=out_sms, minSup=100(10 percent), maxLenght=3, minDiff=0, 1000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=out_sms minSup=100(10 percent), maxLenght=3, minDiff=0, 1000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_1000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_sms -c minSup=100 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
# 
printf "${RED}Run clingo with class=out_sms, minSup=200(20 percent), maxLenght=3, minDiff=0, 1000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=out_sms minSup=200(20 percent), maxLenght=3, minDiff=0, 1000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_1000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_sms -c minSup=200 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=out_sms, minSup=300(30 percent), maxLenght=3, minDiff=0, 1000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=out_sms minSup=300(30 percent), maxLenght=3, minDiff=0, 1000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_1000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_sms -c minSup=300 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=out_sms, minSup=400(40 percent), maxLenght=3, minDiff=0, 1000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=out_sms minSup=400(40 percent), maxLenght=3, minDiff=0, 1000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_1000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_sms -c minSup=400 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=out_sms, minSup=500(50 percent), maxLenght=3, minDiff=0, 1000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=out_sms minSup=500(50 percent), maxLenght=3, minDiff=0, 1000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_1000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_sms -c minSup=500 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
# class in_call
printf "${RED}Run clingo with class=in_call, minSup=100(10 percent), maxLenght=3, minDiff=0, 1000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=in_call minSup=100(10 percent), maxLenght=3, minDiff=0, 1000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_1000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_call -c minSup=100 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
# 
printf "${RED}Run clingo with class=in_call, minSup=200(20 percent), maxLenght=3, minDiff=0, 1000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=in_call minSup=200(20 percent), maxLenght=3, minDiff=0, 1000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_1000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_call -c minSup=200 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=in_call, minSup=300(30 percent), maxLenght=3, minDiff=0, 1000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=in_call minSup=300(30 percent), maxLenght=3, minDiff=0, 1000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_1000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_call -c minSup=300 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=in_call, minSup=400(40 percent), maxLenght=3, minDiff=0, 1000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=in_call minSup=400(40 percent), maxLenght=3, minDiff=0, 1000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_1000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_call -c minSup=400 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=in_call, minSup=500(50 percent), maxLenght=3, minDiff=0, 1000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=in_call minSup=500(50 percent), maxLenght=3, minDiff=0, 1000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_1000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_call -c minSup=500 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
# class out_call
printf "${RED}Run clingo with class=out_call, minSup=100(10 percent), maxLenght=3, minDiff=0, 1000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=out_call minSup=100(10 percent), maxLenght=3, minDiff=0, 1000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_1000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_call -c minSup=100 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
# 
printf "${RED}Run clingo with class=out_call, minSup=200(20 percent), maxLenght=3, minDiff=0, 1000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=out_call minSup=200(20 percent), maxLenght=3, minDiff=0, 1000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_1000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_call -c minSup=200 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=out_call, minSup=300(30 percent), maxLenght=3, minDiff=0, 1000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=out_call minSup=300(30 percent), maxLenght=3, minDiff=0, 1000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_1000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_call -c minSup=300 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=out_call, minSup=400(40 percent), maxLenght=3, minDiff=0, 1000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=out_call minSup=400(40 percent), maxLenght=3, minDiff=0, 1000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_1000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_call -c minSup=400 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=out_call, minSup=500(50 percent), maxLenght=3, minDiff=0, 1000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=out_call minSup=500(50 percent), maxLenght=3, minDiff=0, 1000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_1000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_call -c minSup=500 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
# Third group of experiments: 10000 dataset instances, varying class for contrast and support threshold.
printf "Third group of experiments, scalability test, contrast patterns, 10000 dataset instances, varying class for contrast and support threshold...\n"
# class in_sms
printf "${RED}Run clingo with class=in_sms, minSup=1000(10 percent), maxLenght=3, minDiff=0, 10000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=in_sms minSup=1000(10 percent), maxLenght=3, minDiff=0, 10000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_10000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_sms -c minSup=1000 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=in_sms, minSup=2000(20 percent), maxLenght=3, minDiff=0, 10000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=in_sms minSup=2000(20 percent), maxLenght=3, minDiff=0, 10000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_10000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_sms -c minSup=2000 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=in_sms, minSup=3000(30 percent), maxLenght=3, minDiff=0, 10000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=in_sms minSup=3000(30 percent), maxLenght=3, minDiff=0, 10000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_10000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_sms -c minSup=3000 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=in_sms, minSup=4000(40 percent), maxLenght=3, minDiff=0, 10000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=in_sms minSup=4000(40 percent), maxLenght=3, minDiff=0, 10000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_10000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_sms -c minSup=4000 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=in_sms, minSup=5000(50 percent), maxLenght=3, minDiff=0, 10000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=in_sms minSup=5000(50 percent), maxLenght=3, minDiff=0, 10000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_10000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_sms -c minSup=5000 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
# class out_sms
printf "${RED}Run clingo with class=out_sms, minSup=1000(10 percent), maxLenght=3, minDiff=0, 10000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=out_sms minSup=1000(10 percent), maxLenght=3, minDiff=0, 10000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_10000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_sms -c minSup=1000 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=out_sms, minSup=2000(20 percent), maxLenght=3, minDiff=0, 10000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=out_sms minSup=2000(20 percent), maxLenght=3, minDiff=0, 10000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_10000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_sms -c minSup=2000 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=out_sms, minSup=3000(30 percent), maxLenght=3, minDiff=0, 10000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=out_sms minSup=3000(30 percent), maxLenght=3, minDiff=0, 10000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_10000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_sms -c minSup=3000 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=out_sms, minSup=4000(40 percent), maxLenght=3, minDiff=0, 10000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=out_sms minSup=4000(40 percent), maxLenght=3, minDiff=0, 10000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_10000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_sms -c minSup=4000 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=out_sms, minSup=5000(50 percent), maxLenght=3, minDiff=0, 10000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=out_sms minSup=5000(50 percent), maxLenght=3, minDiff=0, 10000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_10000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_sms -c minSup=5000 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
# class in_call
printf "${RED}Run clingo with class=in_call, minSup=1000(10 percent), maxLenght=3, minDiff=0, 10000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=in_call minSup=1000(10 percent), maxLenght=3, minDiff=0, 10000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_10000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_call -c minSup=1000 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=in_call, minSup=2000(20 percent), maxLenght=3, minDiff=0, 10000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=in_call minSup=2000(20 percent), maxLenght=3, minDiff=0, 10000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_10000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_call -c minSup=2000 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=in_call, minSup=3000(30 percent), maxLenght=3, minDiff=0, 10000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=in_call minSup=3000(30 percent), maxLenght=3, minDiff=0, 10000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_10000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_call -c minSup=3000 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=in_call, minSup=4000(40 percent), maxLenght=3, minDiff=0, 10000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=in_call minSup=4000(40 percent), maxLenght=3, minDiff=0, 10000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_10000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_call -c minSup=4000 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=in_call, minSup=5000(50 percent), maxLenght=3, minDiff=0, 10000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=in_call minSup=5000(50 percent), maxLenght=3, minDiff=0, 10000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_10000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=in_call -c minSup=5000 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
# class out_call
printf "${RED}Run clingo with class=out_call, minSup=1000(10 percent), maxLenght=3, minDiff=0, 10000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=out_call minSup=1000(10 percent), maxLenght=3, minDiff=0, 10000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_10000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_call -c minSup=1000 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=out_call, minSup=2000(20 percent), maxLenght=3, minDiff=0, 10000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=out_call minSup=2000(20 percent), maxLenght=3, minDiff=0, 10000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_10000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_call -c minSup=2000 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=out_call, minSup=3000(30 percent), maxLenght=3, minDiff=0, 10000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=out_call minSup=3000(30 percent), maxLenght=3, minDiff=0, 10000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_10000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_call -c minSup=3000 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=out_call, minSup=4000(40 percent), maxLenght=3, minDiff=0, 10000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=out_call minSup=4000(40 percent), maxLenght=3, minDiff=0, 10000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_10000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_call -c minSup=4000 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
#
printf "${RED}Run clingo with class=out_call, minSup=5000(50 percent), maxLenght=3, minDiff=0, 10000 instances...${NC}\n"
filename="con_"$(date +%d-%m-%Y_%H-%M-%S)".txt"
printf "class=out_call minSup=5000(50 percent), maxLenght=3, minDiff=0, 10000 instances\r\n" > output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
clingo output_files/Karen/Karen_transactions_10000.lp asp_encodings/contrast_mining/absolute_emerging.lp -n 0 -c class=out_call -c minSup=5000 -c maxLenght=3 -c minDiff=0 --time-limit=18000 >> output_files/log_experimentation/contrast_pattern_mining/Karen/Scalability_test/$filename
