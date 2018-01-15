# ssh-maven-Sub_module
ssh-maven-分模块开发<br/>

通过maven将一个ssh项目分割为不同的几个部分独立开发<br/>
1、ssh是一个独立的，完整的一个maven项目<br/>
2、ssh-parent是采用分模块开发，将ssh项目分为三部分：ssh-dao,ssh-service,ssh-web。<br/>
    （1）其中ssh-dao：是dao层这个模块分出来的工程。<br/>
                     包括<br/>
                    【1】dao层的代码<br/>
                    【2】hibernate的配置文件（映射配置文件，核心配置文件）<br/>
                    【3】entity（实体类的代码），因为没有把实体类独自放在独立模块，而是选择放在ssh-dao这个工程中<br/>
                    【4】spring的配置文件，配置bean相关的信息<br/>
    （2）其中ssh-service：是service层这个模块分出来的工程<br/>
                     包括<br/>
                     【1】service层的代码<br/>
                     【2】spring的配置文件，配置bean相关的信息<br/>
                      {备注：ssh-service的jar包里面包括：ssh-dao这个工程打包成的jar包}<br/>
     (3)其中ssh-web:是web层这个模块分出来的工程<br/>
                     包括<br/>
                     【1】web层的代码<br/>
                     【2】spring的配置文件，配置bean相关的信息<br/>
                     【3】Struts2的配置文件<br/>
                      {备注：ssh-web的jar包里面包括：ssh-service这个工程打包成的jar包}<br/>
