struct data
{
    int index;
    int id;
    char name[30];
};

int main ()
{
    struct data p[3];
    int i=0;
FILE *fp = fopen("input.txt","r+");
while(fscanf(fp,"%d,%d,%s",&p[i].index,&p[i].id,p[i].name) != EOF)
{
    i++;
}
i=0;
while(i<3)
{
fprintf(fp,"%d %d %s\n",p[i].index,p[i].id,p[i].name);
i++;
}
fclose(fp);
}