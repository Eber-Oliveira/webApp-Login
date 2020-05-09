<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;
charset=UTF-8">
<title>Login</title>
</head>
<%
	//Entre esses simbolos, podemos escrever Java
	String erro = null;

	//Checa se o usuario e senha estão corretos
	if ("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("submit") != null){%>
		<jsp:useBean id="loginBean" class="br.com.eberoliveira.webApp.bean.LoginBean">
			<jsp:setProperty name="loginBean" property="*" />
		</jsp:useBean>	
		<%
			if (loginBean.isValid()){
				//Usuário validado. Mostrar mensgens de boas vindas
				out.println("<h2> Bem vindo </h2>");
				out.println("Login efetuado com Sucesso - 10.000 pontos pra mim, por gentileza");				
				return;
				
			}else {
				erro = "Usuário ou senha inválidos. Tente novamente";
			}
		
		%>
			
<%		
	}

%>
<body>
	<form method="post" >
        <div>
            <div>
                <h2>Painel de Controle</h2>
                <p><b>Acesso</b></p>
                <%
                	if (erro != null)
                {%>
                
                	<span style="color: red;"><%
                		out.println(erro);
                %>               	
                	</span>
                <%
                	
                		
                	}
                %>
                
                
            </div>

            <div>
                <label>Usuário</label>
                <input type="text" name="usuario">
            </div>

            <div>
                <label>Senha</label>
                <input type="password" name="senha">
            </div>  
                  
            <div>
                <button type="submit" name="submit">Acessar</button>     
                <button type="reset">Reset</button>     
            </div>
        </div>
    </form>



</body>


</html>
