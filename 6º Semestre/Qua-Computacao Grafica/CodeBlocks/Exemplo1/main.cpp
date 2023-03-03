#ifdef __APPLE__
#include <GLUT/glut.h>
#else
#include<GL/glut.h>
#endif

#include<stdlib.h>

void Inicializa(void){
    glClearColor(1.0f, 1.0f, 0.0f, 1.0f);
    glMatrixMode(GL_PROJECTION);
    gluOrtho2D(0.0,10.0,0.0,10.0);}

void Teclado (unsigned char key, int x, int y)
{
if (key == 113)
exit(0);
}

void Desenha (void){
    glClear(GL_COLOR_BUFFER_BIT);
    glColor3f(1.0,0.0,0.0);
    glBegin(GL_TRIANGLES);
    glVertex3f(2.0, 2.0, 0);
    glVertex3f(6.0, 2.0, 0);
    glVertex3f(4.0, 6.0, 0);
    glEnd();
    glFlush();
}
int main(int argc, char *argv[])
{
    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
    glutCreateWindow("Primeiro Programa");
    glutDisplayFunc(Desenha);
    Inicializa();
    glutKeyboardFunc (Teclado);
    glutMainLoop();


    return EXIT_SUCCESS;
}
