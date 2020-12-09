.class Lcom/android/server/display/AutomaticBrightnessController$1;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/AutomaticBrightnessController;->updateForegroundApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 2

    .line 863
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 867
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$000(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    .line 868
    if-eqz v0, :cond_57

    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_11

    goto :goto_57

    .line 871
    :cond_11
    iget-object v0, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 874
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$100(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 875
    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$100(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 876
    return-void

    .line 878
    :cond_2c
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v1, v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$202(Lcom/android/server/display/AutomaticBrightnessController;Ljava/lang/String;)Ljava/lang/String;

    .line 879
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$302(Lcom/android/server/display/AutomaticBrightnessController;I)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_37} :catch_58

    .line 881
    :try_start_37
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$400(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x400000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 883
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-static {v1, v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$302(Lcom/android/server/display/AutomaticBrightnessController;I)I
    :try_end_4a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_4a} :catch_4b
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_4a} :catch_58

    .line 886
    goto :goto_4c

    .line 884
    :catch_4b
    move-exception v0

    .line 887
    :goto_4c
    :try_start_4c
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$500(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessage(I)Z
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_56} :catch_58

    .line 890
    goto :goto_59

    .line 869
    :cond_57
    :goto_57
    return-void

    .line 888
    :catch_58
    move-exception v0

    .line 891
    :goto_59
    return-void
.end method
