.class Lcom/android/keyguard/KeyguardUpdateMonitor$15;
.super Landroid/database/ContentObserver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;->watchForWellcomePage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V
    .registers 3

    .line 3679
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 3682
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3683
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6302(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z

    .line 3684
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wellcome page state change "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardUpdateMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3685
    sget-object p1, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5f

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result p1

    if-nez p1, :cond_5f

    const/4 p1, 0x0

    .line 3686
    :goto_39
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_5f

    .line 3687
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$15;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$6500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_5c

    .line 3689
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUpdateInputRestricted()V

    :cond_5c
    add-int/lit8 p1, p1, 0x1

    goto :goto_39

    :cond_5f
    return-void
.end method
