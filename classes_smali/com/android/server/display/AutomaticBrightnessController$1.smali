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
    .param p1, "this$0"  # Lcom/android/server/display/AutomaticBrightnessController;

    .line 1081
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1085
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$000(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    .line 1086
    .local v0, "info":Landroid/app/ActivityManager$StackInfo;
    if-eqz v0, :cond_59

    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_11

    goto :goto_59

    .line 1089
    :cond_11
    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1092
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$100(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1093
    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$100(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1094
    return-void

    .line 1096
    :cond_2c
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v2, v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$202(Lcom/android/server/display/AutomaticBrightnessController;Ljava/lang/String;)Ljava/lang/String;

    .line 1097
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$302(Lcom/android/server/display/AutomaticBrightnessController;I)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_37} :catch_5a

    .line 1099
    :try_start_37
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$400(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x400000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1101
    .local v2, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-static {v3, v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$302(Lcom/android/server/display/AutomaticBrightnessController;I)I
    :try_end_4a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_4a} :catch_4c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_4a} :catch_5a

    .line 1104
    nop

    .end local v2  # "app":Landroid/content/pm/ApplicationInfo;
    goto :goto_4d

    .line 1102
    :catch_4c
    move-exception v2

    .line 1105
    :goto_4d
    :try_start_4d
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$500(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessage(I)Z
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_57} :catch_5a

    .line 1108
    nop

    .end local v0  # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v1  # "packageName":Ljava/lang/String;
    goto :goto_5b

    .line 1087
    .restart local v0  # "info":Landroid/app/ActivityManager$StackInfo;
    :cond_59
    :goto_59
    return-void

    .line 1106
    .end local v0  # "info":Landroid/app/ActivityManager$StackInfo;
    :catch_5a
    move-exception v0

    .line 1109
    :goto_5b
    return-void
.end method
