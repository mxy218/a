.class Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;
.super Ljava/lang/Object;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WipeConfirmListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainer;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V
    .registers 2

    .line 853
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardSecurityContainer$1;)V
    .registers 3

    .line 853
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    const/4 p1, -0x1

    if-ne p1, p2, :cond_11

    .line 856
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$800(Lcom/android/keyguard/KeyguardSecurityContainer;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    goto :goto_28

    .line 858
    :cond_11
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p1

    if-eqz p1, :cond_18

    return-void

    .line 859
    :cond_18
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 860
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$900(Lcom/android/keyguard/KeyguardSecurityContainer;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_28
    return-void
.end method
