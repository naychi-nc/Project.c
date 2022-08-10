#include <stdio.h>
#include <stdlib.h>
#include <math.h>

float vec(float dis,int time);
float acce(float fv,float iv,int time);
float we(float m);
float me(float m);
float den(float ms,float vm);
float pres(float ff, float aa);
float ene(float m,float h);
float gpe(float m,float h);
float kin(float m,float v);
float wor(float ff,float d);
float res=0;
struct login;


int main(){

int cc=0;
int tt=0;
float fd=0;
float res=0;
float cd=0;
int ch=0;
float usd=0;
float pou=0;
float euro=0;
float yuan=0;
float won=0;
float yen=0;
float baht=0;
int mm=0;
float g=0;
float k=0;
float p=0;


int c=0;
int n=0;
float d=0;
int t=0;
float fv=0;
float iv=0;
float m=0;
float ms=0;
float vm=0;
float h=0;
float ff=0;
float aa=0;
float v=0;
int pp=0;
FILE *fptr;
char username[]="aa";
int pass=0;
int rlp=0;
int prem=0;
int num=0;
int i=1;
int facto=1;

printf("***Welcome to Nay Chi's Calculator!***\n");
printf("If you wanna use as a free user,please enter 1 or if you want to use as a premium user, please enter 2.\n");
scanf("%d",&c);

if(c<1 || c>2){
    printf("Invalid input!");
}


else if (c==1){
    printf("\n***Welcome to Nay Chi's Unit Conversion Program!***");
    printf("\nYou have 3 kinds of choices to convert:\n\n");
    printf("Please press \n1 for Temperature,\n2 for Currency,\n3 for Mass\n");
    scanf("%d",&cc);

if (cc<1 || cc>3){
    printf("Invalid input!");
   }

else if (cc==1){
    printf("\n***You are at the Temperature Unit Changing section!***\n");
    printf("Please enter 1 to change from *Fahrenheit* to Celsius\n             2 to change from *Celsius* to Fahrenheit.\n");
    scanf("%d",&tt);

if (tt<1 || tt>2){
    printf("Invalid input!\n");
    }

else if (tt==1){
    printf("Please enter the Fahrenheit degree:");
    scanf("%f",&fd);
    res=((fd-32) * (5.0/9.0));
    printf("\nThe Celsius degree:%.2f\n",res);
}

else if (tt==2){
    printf("Please enter the Celsius degree:");
    scanf("%f",&cd);
    res=((9.0/5.0)*cd + 32);
    printf("\nThe Fahrenheit degree:%.2f\n",res);
}
}


else if (cc==2){
    printf("\n***You are at the Currency Unit Changing section!***\n");
    printf("Please enter 1 to change from Kyat to *USD*,\n            2 to change from Kyat to *Sterling Pound(UK)*,\n            3 to change from Kyat to *Euro*,\n            4 to change from Kyat to *Yuan(China)*,\n            5 to change from Kyat to *Won(Korea)*,\n            6 to change from Kyat to *Yen(Japan)*,\n            7 to change from Kyat to *Baht(Thai)*.\n");
    scanf("%d",&ch);

if (ch<1 || ch>7){
    printf("Invalid Input!\n");
}

else if (ch==1){
    printf("Please enter the amount of Kyat:");
    scanf("%f",&usd);
    res=usd*0.00054;
    printf("\nThe amount of USD :%.2f$\n",res);

}

else if (ch==2){
    printf("\nPlease enter the amount of Kyat:");
    scanf("%f",&pou);
    res=pou*0.00045;
    printf("The amount of Sterling Pound :%.2f\n",res);

}

else if (ch==3){
    printf("\nPlease enter the amount of Kyat:");
    scanf("%f",&euro);
    res=euro*0.00053;
    printf("The amount of Euro :%.2f\n",res);

}

else if (ch==4){
    printf("\nPlease enter the amount of Kyat:");
    scanf("%f",&yuan);
    res=yuan*0.0036;
    printf("The amount of Yuan :%.2f\n",res);

}

else if (ch==5){
    printf("\nPlease enter the amount of Kyat:");
    scanf("%f",&won);
    res=won*0.70;
    printf("The amount of Won :%.2f\n",res);

}

else if (ch==6){
    printf("\nPlease enter the amount of Kyat:");
    scanf("%f",&yen);
    res=yen*0.073;
    printf("The amount of Yen :%.2f\n",res);

}

else if (ch==7){
    printf("\nPlease enter the amount of Kyat:");
    scanf("%f",&baht);
    res=baht*0.019;
    printf("The amount of Baht :%.2f\n",res);

}
}


else if (cc==3){
    printf("\n***You are at the Mass Unit Changing section!***\n");
    printf("Please press 1 to change from gram to kilogram,\n             2 to change from kilogram to gram,\n             3 to change from gram to pound,\n             4 to change from pound to gram,\n             5 to change from kilogram to pound,\n             6 to change from pound to kilogram.\n");
    scanf("%d",&mm);

if (mm<1 || mm>6){
    printf("Invalid Input!");
}

else if (mm==1){
    printf("\nPlease enter the amount of gram:");
    scanf("%f",&g);
    res=g*0.001;
    printf("\nThe amount of kilogram:%f.\n",res);
}

else if (mm==2){
    printf("\nPlease enter the amount of kilogram:");
    scanf("%f",&k);
    res=k*1000;
    printf("\nThe amount of gram:%f.\n",res);
}

else if (mm==3){
    printf("\nPlease enter the amount of gram:");
    scanf("%f",&g);
    res=g*0.00220462;
    printf("\nThe amount of pound:%f.\n",res);
}

else if (mm==4){
    printf("\nPlease enter the amount of pound:");
    scanf("%f",&p);
    res=p*453.592;
    printf("\nThe amount of gram:%f.\n",res);
}

else if (mm==5){
    printf("\nPlease enter the amount of kilogram:");
    scanf("%f",&k);
    res=k*2.20462;
    printf("\nThe amount of kilogram:%f.\n",res);
}

else if (mm==6){
    printf("\nPlease enter the amount of pound:");
    scanf("%f",&p);
    res=p*0.453592;
    printf("\nThe amount of kilogram:%f.\n",res);
}

}
}

else if(c==2){
    printf("\nPress 1 to sign up.\n");
    scanf("%d",&pp);

if (pp!=1){
    printf("Invalid input!");
}

else if (pp==1){
    fptr=fopen("Premium_information.txt","a+");
    printf("Please fill in information!\n");
    printf("Username:");
    scanf("%s",&username);
  fputs(username,fptr);
    printf("\n**Only Numbers.***\nPasscode:");
    scanf("%d",&pass);
    fprintf(fptr,"%d\n",pass);
    printf("Your username is %s,\nand your passcode is %d.\n",username,pass);
    rlp=1;
    fclose(fptr);
    printf("\n\nNow you are a premium user!\nCongratulations!\n");
    printf("As a premium user, you can get more features than a free user.\n");

}



if(rlp==1){
    printf("As a premium user, you can get 3 opportunities.\n\n");
    printf("1.Unit Conversion\n2.Physics Calculator\n3.Finding factorial.\n");
    printf("\n   **Please enter the number of the task that you want to use.**\n");
    scanf("%d",&prem);

if (prem<1 || prem>3){
    printf("Invalid Input!");
}

else if (prem==1){
    printf("\n\n***Welcome to Nay Chi's Unit Conversion Program!***\n");
printf("You have 3 kinds of choices to convert:\n");
printf("Please press \n1 for Temperature,\n2 for Currency,\n3 for Mass\n");
scanf("%d",&cc);

if (cc<1 || cc>3){
    printf("Invalid input!");
   }

else if (cc==1){
    printf("\n\n***You are at the Temperature Unit Changing section!***\n");
    printf("Please enter 1 to change from *Fahrenheit* to Celsius\n             2 to change from *Celsius* to Fahrenheit.\n");
    scanf("%d",&tt);

if (tt<1 || tt>2){
    printf("Invalid input!");
    }

else if (tt==1){
    printf("Please enter the Fahrenheit degree:");
    scanf("%f",&fd);
    res=((fd-32) * (5.0/9.0));
    printf("\nThe Celsius degree:%.2f\n",res);
}

else if (tt==2){
    printf("Please enter the Celsius degree:");
    scanf("%f",&cd);
    res=((9.0/5.0)*cd + 32);
    printf("\nThe Fahrenheit degree:%.2f\n",res);
}
}


else if (cc==2){
    printf("\n\n***You are at the Currency Unit Changing section!***\n");
    printf("Please enter 1 to change from Kyat to *USD*,\n            2 to change from Kyat to *Sterling Pound(UK)*,\n            3 to change from Kyat to *Euro*,\n            4 to change from Kyat to *Yuan(China)*,\n            5 to change from Kyat to *Won(Korea)*,\n            6 to change from Kyat to *Yen(Japan)*,\n            7 to change from Kyat to *Baht(Thai)*.\n");
    scanf("%d",&ch);

if (ch<1 || ch>7){
    printf("Invalid Input!");
}

else if (ch==1){
    printf("Please enter the amount of Kyat:");
    scanf("%f",&usd);
    res=usd*0.00054;
    printf("The amount of USD :%.2f$\n",res);

}

else if (ch==2){
    printf("Please enter the amount of Kyat:");
    scanf("%f",&pou);
    res=pou*0.00045;
    printf("The amount of Sterling Pound :%.2f\n",res);

}

else if (ch==3){
    printf("Please enter the amount of Kyat:");
    scanf("%f",&euro);
    res=euro*0.00053;
    printf("The amount of Euro :%.2f\n",res);

}

else if (ch==4){
    printf("Please enter the amount of Kyat:");
    scanf("%f",&yuan);
    res=yuan*0.0036;
    printf("The amount of Yuan :%.2f\n",res);

}

else if (ch==5){
    printf("Please enter the amount of Kyat:");
    scanf("%f",&won);
    res=won*0.70;
    printf("The amount of Won :%.2f\n",res);

}

else if (ch==6){
    printf("Please enter the amount of Kyat:");
    scanf("%f",&yen);
    res=yen*0.073;
    printf("The amount of Yen :%.2f\n",res);

}

else if (ch==7){
    printf("Please enter the amount of Kyat:");
    scanf("%f",&baht);
    res=baht*0.019;
    printf("The amount of Baht :%.2f\n",res);

}
}


else if (cc==3){
    printf("\n\n***You are at the Mass Unit Changing section!***\n");
    printf("Please press 1 to change from gram to kilogram,\n             2 to change from kilogram to gram,\n             3 to change from gram to pound,\n             4 to change from pound to gram,\n             5 to change from kilogram to pound,\n             6 to change from pound to kilogram.\n");
    scanf("%d",&mm);

if (mm<1 || mm>6){
    printf("Invalid Input!");
}

else if (mm==1){
    printf("Please enter the amount of gram:");
    scanf("%f",&g);
    res=g*0.001;
    printf("\nThe amount of kilogram:%f.\n",res);
}

else if (mm==2){
    printf("Please enter the amount of kilogram:");
    scanf("%f",&k);
    res=k*1000;
    printf("\nThe amount of gram:%f.\n",res);
}

else if (mm==3){
    printf("Please enter the amount of gram:");
    scanf("%f",&g);
    res=g*0.00220462;
    printf("\nThe amount of pound:%f.\n",res);
}

else if (mm==4){
    printf("Please enter the amount of pound:");
    scanf("%f",&p);
    res=p*453.592;
    printf("\nThe amount of gram:%f.\n",res);
}

else if (mm==5){
    printf("Please enter the amount of kilogram:");
    scanf("%f",&k);
    res=k*2.20462;
    printf("\nThe amount of kilogram:%f.\n",res);
}

else if (mm==6){
    printf("Please enter the amount of pound:");
    scanf("%f",&p);
    res=p*0.453592;
    printf("\nThe amount of kilogram:%f.\n",res);
}

}


}

else if (prem==2){
    printf("\n\n***Welcome to Nay Chi's Physics Calculator!***\n");

printf("What do you want to calculate?\n\n");
printf("In this program, you can calculate\n 1.Speed\n 2.Acceleration\n 3.Weight on the Earth\n 4.Weight on the moon\n 5.Density\n 6.Pressure\n 7.The energy required to lift a particular object\n 8.Gravity Potential Energy\n 9.Kinetic Energy\n10.Work done.\n\n");
printf("PLEASE enter the number of the task that you want to figure out!\n");
scanf("%d",&n);
printf("\n\n*****Before we start our work we want to tell you two rules must be obey.\n The first one is that you must use the SI units system throughout the whole program, and the second and the last one is to enter the requirements in sequence.\n If you do not follow these two rules, your answer may not be correct.\nSo please obey the two rules!  Thank You!*****\n\n");


if(n<1 || n>10){
    printf("Invalid Input!");
}

else if(n==1){
    printf("\n\n**You are in the Speed section!\n Please enter the distance travelled in meter first and the time taken in second later.**\n");
    scanf("%f %d",&d,&t);
    res=vec(d,t);
    printf("The velocity is %.2f meters per second.\nThank You for running our program!",res);
}

else if(n==2){
    printf("\n\n**You are in the Acceleration section!\n Please enter the initial velocity and the final velocity in meters per second, and the time taken in second.*\n\n");
    scanf("%f %f %d",&iv,&fv,&t);
    res=acce(fv,iv,t);
    printf("The acceleration is %.2f meters per second squared.\nThat means the object is moving %f meters per second(velocity) in every one second.Thank You for running our programme!\n",res,res);
    }

else if(n==3){
    printf("\n\n*To calculate the weight of an object on the Earth, please enter the mass of the object in kg.*\n");
    scanf("%f",&m);
    res=we(m);
    printf("The weight of the object on the Earth is %.2f newtons.\n",res);
}

else if(n==4){
    printf("\n\n*To calculate the weight of an object on the moon, please enter the mass of the object in kg.*\n");
    scanf("%f",&m);
    res=me(m);
    printf("The weight of the object on the moon is %.2f newtons.\n",res);
}

else if(n==5){
    printf("\n\n*To calculate the density of the object, please enter the mass in kg and the volume of the object in cubic meter.*\n");
    scanf("%f %f",&ms,&vm);
    res=den(ms,vm);
    printf("The density of the object is %.2f kg per meter cube.\n",res);
}

else if(n==6){
    printf("\n\n*To calculate the pressure exerted on an object, please enter the force in newton and the area  in cubic meter.*\n");
    scanf("%f %f",&ff,&aa);
    res=pres(ff,aa);
    printf("The pressure exerted on an object is %.2f pascals(Pa).\n",res);
}

else if(n==7){
    printf("\n\n*To calculate the Energy required to lift straight up an object, please enter the mass of the object in kg and the height you wanna lift straight up in meter.*\n");
    scanf("%f %f",&m,&h);
    res=ene(m,h);
    printf("The energy required to lift an object is %.2f joules.\n",res);
}

else if(n==8){
    printf("\n\n*To calculate the Gravitational Potential Energy stored in an object, please enter the mass of the object in kg and the height above the earth that the object reaches in meter.*\n");
    scanf("%f %f",&m,&h);
    res=gpe(m,h);
    printf("The Gravitational Potential Energy stored in that object is %.2f joules.\n");
}

else if(n==9){
    printf("\n\n*To calculate the Kinetic Energy of an object, please enter the mass of the object in kg and the velocity of the object in meter per second.*\n");
    scanf("%f %f",&m,&v);
    res=kin(m,v);
    printf("The Kinetic Energy of the object is %.2f joules.\n",res);
}

else if(n==10){
     printf("\n\n*To calculate the Work done of the object, please enter the applied force in newton and the displacement of the object in meter.*\n");
     scanf("%f %f",&ff,&d);
     res=wor(ff,d);
     printf("The work done of the object is %.2f joules.\n",res);
}
}

else if (prem==3){
    printf("\n\n***You are at the Finding Factorial section!***\n");
    printf("Please enter the number that you want to find factorial.\n");
    scanf("%d",&num);

for (i=1;i<=num;i++){
    facto=facto*i;
}
    printf("The factorial of %d is %d.\n",num,facto);

}
}
}




}
float vec(float dis,int time){
    res=dis/time;
    return res;
    }

float acce(float fv,float iv,int time){
    res=(fv-iv)/time;
    return res;
    }

float we(float m){
    res=m*9.8;
    return res;
    }

float me(float m){
    res=m*1.625;
    return res;
    }

float den(float ms, float vm){
    res=ms/vm;
    return res;
    }

float pres(float ff, float aa){
    res=ff/aa;
    return res;
    }

float ene(float m,float h){
    res=m*9.8*h;
    return res;
    }

float gpe(float m,float h){
    res=m*9.8*h;
    return res;
    }

float kin(float m,float v){
    res=0.5*m*pow(v,2);
    return res;
    }

float wor(float ff,float d){
    res=ff*d;
    return res;
    }




