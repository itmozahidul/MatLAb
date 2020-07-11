function grph(name,x1,x2)
    filename=importdata(name);
    rlmt=34;
    kf=filename(:,4);
    T=filename(:,3);
    phi=filename(:,2);
    phidot=filename(:,1);

    phidot_min=min(phidot);
    phidot_max=max(phidot);
    phidot_mean=mean(phidot);
    
    T_min=min(T);
    T_max=max(T);
    T_mean=mean(T);
    
    model1_kf_2d_graph_phi_T_min=graph_model1_2d(x1,phi,phidot_min,T_min);
    model1_kf_2d_graph_phi_T_max=graph_model1_2d(x1,phi,phidot_max,T_max);
    model1_kf_2d_graph_phi_T_mean=graph_model1_2d(x1,phi,phidot_mean,T_mean);
    
    model2_kf_2d_graph_phi_T_min=graph_model2_2d(x2,phi,phidot_min,T_min);
    
    model2_kf_2d_graph_phi_T_max=graph_model2_2d(x2,phi,phidot_max,T_max);
    model2_kf_2d_graph_phi_T_mean=graph_model2_2d(x2,phi,phidot_mean,T_mean);
    
   
    
    
    %figure('name','model_1_2d_graph');
    
    subplot(3,1,1);
    plot(phi(1:rlmt,:),kf(1:rlmt,:),'.-k',phi(1:rlmt,:),model1_kf_2d_graph_phi_T_min(1:rlmt,:),'.-r',phi(1:rlmt,:),model2_kf_2d_graph_phi_T_min(1:rlmt,:),'.-g');
    title(['T fixed at minimum=',num2str(T_min), ' and phidot fixed at minimum=',num2str(phidot_min)]);
    xlabel('Values of Phi');
    ylabel('Values of Kf');
    legend('Kf from Dataset','Kf from model 1 ','Kf from model 2 ');
    
    subplot(3,1,2);
    plot(phi(1:rlmt,:),kf(1:rlmt,:),'.-k',phi(1:rlmt,:),model1_kf_2d_graph_phi_T_max(1:rlmt,:),'.-r',phi(1:rlmt,:),model2_kf_2d_graph_phi_T_max(1:rlmt,:),'.-g');
    title(['T fixed at maximum=',num2str(T_max), ' and phidot fixed at maximum=',num2str(phidot_max)]);
    xlabel('Values of Phi');
    ylabel('Values of Kf');
    legend('Kf from Dataset','Kf from model 1 ','Kf from model 2 ');
    
    subplot(3,1,3);
    plot(phi(1:rlmt,:),kf(1:rlmt,:),'.-k',phi(1:rlmt,:),model1_kf_2d_graph_phi_T_mean(1:rlmt,:),'.-r',phi(1:rlmt,:),model2_kf_2d_graph_phi_T_mean(1:rlmt,:),'.-g');
    title(['T fixed at mean=',num2str(T_mean), ' and phidot fixed at mean=',num2str(phidot_mean)]);
    xlabel('Values of Phi');
    ylabel('Values of Kf');
    legend('Kf from Dataset','Kf from model 1 ','Kf from model 2 ');
end