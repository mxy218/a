.class Lcom/android/server/am/BaseErrorDialog$1;
.super Landroid/os/Handler;
.source "BaseErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BaseErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BaseErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/BaseErrorDialog;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/android/server/am/BaseErrorDialog$1;->this$0:Lcom/android/server/am/BaseErrorDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_11

    .line 80
    iget-object p1, p0, Lcom/android/server/am/BaseErrorDialog$1;->this$0:Lcom/android/server/am/BaseErrorDialog;

    invoke-static {p1, v1}, Lcom/android/server/am/BaseErrorDialog;->access$002(Lcom/android/server/am/BaseErrorDialog;Z)Z

    .line 81
    iget-object p1, p0, Lcom/android/server/am/BaseErrorDialog$1;->this$0:Lcom/android/server/am/BaseErrorDialog;

    invoke-static {p1, v2}, Lcom/android/server/am/BaseErrorDialog;->access$100(Lcom/android/server/am/BaseErrorDialog;Z)V

    goto :goto_1a

    .line 82
    :cond_11
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v2, :cond_1a

    .line 83
    iget-object p1, p0, Lcom/android/server/am/BaseErrorDialog$1;->this$0:Lcom/android/server/am/BaseErrorDialog;

    invoke-static {p1, v1}, Lcom/android/server/am/BaseErrorDialog;->access$100(Lcom/android/server/am/BaseErrorDialog;Z)V

    .line 85
    :cond_1a
    :goto_1a
    return-void
.end method
