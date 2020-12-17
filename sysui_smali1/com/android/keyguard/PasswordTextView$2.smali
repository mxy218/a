.class Lcom/android/keyguard/PasswordTextView$2;
.super Landroid/os/Handler;
.source "PasswordTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PasswordTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/PasswordTextView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PasswordTextView;)V
    .registers 2

    .line 1077
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$2;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1080
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_23

    .line 1085
    :cond_8
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView$2;->this$0:Lcom/android/keyguard/PasswordTextView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/keyguard/PasswordTextView;->access$1900(Lcom/android/keyguard/PasswordTextView;Z)V

    goto :goto_23

    .line 1082
    :cond_16
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView$2;->this$0:Lcom/android/keyguard/PasswordTextView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p0, p1}, Lcom/android/keyguard/PasswordTextView;->access$1800(Lcom/android/keyguard/PasswordTextView;C)V

    :goto_23
    return-void
.end method
