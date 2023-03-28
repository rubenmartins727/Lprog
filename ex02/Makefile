# Makefile para compilar e executar um programa Flex

# Nome do arquivo Flex
FLEX_FILE = ex02.flex

# Nome do arquivo de entrada de texto
TEXT_FILE = file.txt

# Nome do executável a ser gerado
EXEC_NAME = programa

all: $(EXEC_NAME)

# Regra para gerar o arquivo C a partir do arquivo Flex
lex.yy.c: $(FLEX_FILE)
	flex $<

# Regra para compilar o programa a partir do arquivo C gerado pelo Flex
$(EXEC_NAME): lex.yy.c
	gcc -o $@ $< -lfl

# Regra para executar o programa com o arquivo de texto como entrada
run: $(EXEC_NAME) $(TEXT_FILE)
	cat $(TEXT_FILE) | ./$(EXEC_NAME)

clean:
	rm -f lex.yy.c $(EXEC_NAME)
