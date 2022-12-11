let tableStats=
`                <table id="stadistics">
                    <%
                        try{
                            int month = Integer.valueOf(new SimpleDateFormat("MM").format(Calendar.getInstance().getTime()));
                            for (int i = 0; i < modulesV.length; i++) {
                                modulesCount[i] = servisDao.getStatsByModule(
                                        modulesV[i], month
                                );
                                System.out.println(modulesCount[i]);
                            }

                            for (int i = 0; i < modulesCount.length; i++) {
                    %>
                            <tr>
                                <td class="countingSpace moduleName"><%=modulesCount[i].getModuleName()%></td>
                            <%for(int j=0;j<modulesCount[i].getCount();j++){%> 
                                <td class="countingSpace <%=modulesCount[i].getModuleName()%>"></td>
                            <%}%>
                            </tr>

                    <%}
                        }catch(Exception e){
                            System.out.println("[+] Error al imprimir estadísticas");
                            e.printStackTrace();
                        }%>
                        <%
                            int[] counted={modulesCount[0].getCount(),modulesCount[1].getCount(),modulesCount[2].getCount()};
                            int index=counted[0];
                            for(int i=0;i<3;i++){
                                int currentNum=counted[i];
                                if(currentNum>index)
                                    index=currentNum;
                            }
                        %>
                        <tr>
                            <td>Usuarios</td>
                            <%for(int i=1;i<index;i++){%>
                                <td><%=i%></td>
                            <%}%>
                        </tr>
                </table>`;
let throughMonth=document.querySelector('#through_month');
throughMonth.innerHTML+=tableStats;
