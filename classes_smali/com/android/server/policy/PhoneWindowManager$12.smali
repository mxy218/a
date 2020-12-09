.class Lcom/android/server/policy/PhoneWindowManager$12;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    .line 5139
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$12;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 5142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 5143
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$12;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    const/4 v0, 0x0

    const-string v1, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayPolicy;->setDockMode(I)V

    goto :goto_30

    .line 5147
    :cond_1b
    :try_start_1b
    const-string/jumbo p1, "uimode"

    .line 5148
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 5147
    invoke-static {p1}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object p1

    .line 5149
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$12;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-interface {p1}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result p1

    iput p1, p2, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2e} :catch_2f

    .line 5151
    goto :goto_30

    .line 5150
    :catch_2f
    move-exception p1

    .line 5153
    :goto_30
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$12;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 5154
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$12;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 5155
    return-void
.end method
