.class Lcom/meizu/settings/devtools/Diagnostics$2;
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

    .line 137
    iput-object p1, p0, Lcom/meizu/settings/devtools/Diagnostics$2;->this$0:Lcom/meizu/settings/devtools/Diagnostics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 141
    iget-object p1, p0, Lcom/meizu/settings/devtools/Diagnostics$2;->this$0:Lcom/meizu/settings/devtools/Diagnostics;

    invoke-static {p1}, Lcom/meizu/settings/devtools/Diagnostics;->access$200(Lcom/meizu/settings/devtools/Diagnostics;)I

    move-result p1

    .line 142
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x3e8

    .line 143
    iput v0, p2, Landroid/os/Message;->what:I

    .line 144
    iput p1, p2, Landroid/os/Message;->arg1:I

    const/4 p1, 0x2

    .line 145
    iput p1, p2, Landroid/os/Message;->arg2:I

    .line 146
    iget-object p1, p0, Lcom/meizu/settings/devtools/Diagnostics$2;->this$0:Lcom/meizu/settings/devtools/Diagnostics;

    iget-object p1, p1, Lcom/meizu/settings/devtools/Diagnostics;->mHandler:Lcom/meizu/settings/devtools/Diagnostics$WorkerHandler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 147
    iget-object p0, p0, Lcom/meizu/settings/devtools/Diagnostics$2;->this$0:Lcom/meizu/settings/devtools/Diagnostics;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
