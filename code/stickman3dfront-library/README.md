# Dia-Shapes para crear stickman em 3D

## Cria/compila os shapes
Cria os arquivos *.shape e *.png. 

	make shapes

## Eliminar arquivos criados
Elimina os arquivos *.shape e *.png.

	make clean

## Instala/desinstala os shapes no directorio de Dia 
Instala el paquete stickman3dfront em Dia, se necessário primeiro faz `make shapes`.
A instalação é feita no diretório `~/.dia`.

	make install

Pelo contrario, para desinstalar usamos:

    make uninstall

A desinstalação é feita no diretório `~/.dia`.

## Executa Dia

	make run

## Criar um arquivo comprimido do projeto
Cria um arquivo em `dist/stickman3dfront-VERSION.tar.gz` onde `VERSION` é a versão atual do projeto.

	make dist

## Criar um arquivo deb do projeto
Cria um arquivo em `deb/stickman3dfront-VERSION_all.deb` onde `VERSION` é a versão atual do projeto.

	make deb

