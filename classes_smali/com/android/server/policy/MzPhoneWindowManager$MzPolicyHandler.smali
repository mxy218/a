.class Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;
.super Landroid/os/Handler;
.source "MzPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MzPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MzPolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MzPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/MzPhoneWindowManager;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/MzPhoneWindowManager;Lcom/android/server/policy/MzPhoneWindowManager$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/policy/MzPhoneWindowManager;
    .param p2, "x1"  # Lcom/android/server/policy/MzPhoneWindowManager$1;

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;-><init>(Lcom/android/server/policy/MzPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_a

    const/16 v1, 0x9

    if-eq v0, v1, :cond_11

    goto :goto_16

    .line 147
    :cond_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 148
    .local v0, "obj":I
    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/MzPhoneWindowManager;->handleShowGlobalActionsConfirm(I)V

    .line 150
    .end local v0  # "obj":I
    :cond_11
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/MzPhoneWindowManager;->access$100(Lcom/android/server/policy/MzPhoneWindowManager;)V

    .line 153
    :goto_16
    return-void
.end method
