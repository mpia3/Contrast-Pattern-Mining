RED='\033[0;31m'
NC='\033[0m' # No Color
# Contrast pattern mining preprocessing.
printf "${RED}Preprocessing dataset into ASP trasnsactions facts...${NC}\n"
python submodules/ASP_preprocessing\(STERL\)/ASP_preprocessing_contrast_mining.py -x data/"Karen Cook McNally Final.xlsx" -o output_files/Karen/Karen_seq_events.lp -c type
