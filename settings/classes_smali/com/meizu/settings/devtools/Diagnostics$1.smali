.class Lcom/meizu/settings/devtools/Diagnostics$1;
.super Ljava/lang/Object;
.source "Diagnostics.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/devtools/Diagnostics;->openSimpleAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/devtools/Diagnostics;


# direct methods
.method constructor <init>(Lcom/meizu/settings/devtools/Diagnostics;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/meizu/settings/devtools/Diagnostics$1;->this$0:Lcom/meizu/settings/devtools/Diagnostics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 154
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 p2, 0x3e8

    .line 155
    iput p2, p1, Landroid/os/Message;->what:I

    const/4 p2, 0x0

    .line 156
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 157
    iput p2, p1, Landroid/os/Message;->arg2:I

    .line 158
    iget-object p2, p0, Lcom/meizu/settings/devtools/Diagnostics$1;->this$0:Lcom/meizu/settings/devtools/Diagnostics;

    iget-object p2, p2, Lcom/meizu/settings/devtools/Diagnostics;->mHandler:Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 159
    iget-object p0, p0, Lcom/meizu/settings/devtools/Diagnostics$1;->this$0:Lcom/meizu/settings/devtools/Diagnostics;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
