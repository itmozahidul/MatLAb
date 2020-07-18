function grph3d(name,x1,x2)
    filename=importdata(name);
    %rlmt=34;
    %kf=filename(:,4);
    T=filename(:,3);
    phi=filename(:,2);
    phidot=filename(:,1);

    
    
    T_min=min(T);
    T_max=max(T);
    T_mean=mean(T);
    
   
    
    model1_kf_3d_graph_T_min=graph_model1_3d(x1,phi,phidot,T_min);
    model1_kf_3d_graph_T_max=graph_model1_3d(x1,phi,phidot,T_max);
    model1_kf_3d_graph_T_mean=graph_model1_3d(x1,phi,phidot,T_mean);
   
    model2_kf_3d_graph_T_min=graph_model2_3d(x2,phi,phidot,T_min);
    model2_kf_3d_graph_T_max=graph_model2_3d(x2,phi,phidot,T_max);
    model2_kf_3d_graph_T_mean=graph_model2_3d(x2,phi,phidot,T_mean);
    
    
    [xx,yy]=meshgrid(phi,phidot);
    
    
    
    figure('name','case:minimum')
    subplot(1,2,1);
    surf(xx,yy,model1_kf_3d_graph_T_min);
    title(['T fixed at minimum=',num2str(T_min)]);
    xlabel('Values of Phi')
    ylabel('Values of Phidot')
    zlabel('Values of kf')
    legend('Kf from model_2')
    
    subplot(1,2,2)
    surf(xx,yy,model2_kf_3d_graph_T_min)
    title(['T fixed at minimum=',num2str(T_min)])
    xlabel('Values of Phi')
    ylabel('Values of Phidot')
    zlabel('Values of kf')
    legend('Kf from model_2')
    
    figure('name','case:maximum')
        subplot(1,2,1)
    surf(xx,yy,model1_kf_3d_graph_T_max)
    title(['T fixed at maximum=',num2str(T_max)])
    xlabel('Values of Phi')
    ylabel('Values of Phidot')
    zlabel('Values of kf')
    legend('Kf from model_1')
    
    subplot(1,2,2)
    surf(xx,yy,model2_kf_3d_graph_T_max)
    title(['T fixed at maximum=',num2str(T_max)])
    xlabel('Values of Phi')
    ylabel('Values of Phidot')
    zlabel('Values of kf')
    legend('Kf from model_2')
    
     figure('name','case:mean')
        subplot(1,2,1)
    surf(xx,yy,model1_kf_3d_graph_T_mean)
    title(['T fixed at mean=',num2str(T_mean)])
    xlabel('Values of Phi')
    ylabel('Values of Phidot')
    zlabel('Values of kf')
    legend('Kf from model_1')
    
    subplot(1,2,2)
    surf(xx,yy,model2_kf_3d_graph_T_mean)
    title(['T fixed at mean=',num2str(T_mean)])
    xlabel('Values of Phi')
    ylabel('Values of Phidot')
    zlabel('Values of kf')
    legend('Kf from model_2')
  
    
   
end