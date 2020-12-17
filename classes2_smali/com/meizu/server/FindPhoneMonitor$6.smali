.class Lcom/meizu/server/FindPhoneMonitor$6;
.super Ljava/lang/Object;
.source "FindPhoneMonitor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/server/FindPhoneMonitor;->buildDialogClickListener(I)Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/FindPhoneMonitor;


# direct methods
.method constructor <init>(Lcom/meizu/server/FindPhoneMonitor;)V
    .registers 2
    .param p1, "this$0"  # Lcom/meizu/server/FindPhoneMonitor;

    .line 254
    iput-object p1, p0, Lcom/meizu/server/FindPhoneMonitor$6;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialogInterface"  # Landroid/content/DialogInterface;
    .param p2, "i"  # I

    .line 257
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor$6;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/server/FindPhoneMonitor;->access$1300(Lcom/meizu/server/FindPhoneMonitor;IILjava/lang/Object;)V

    .line 258
    return-void
.end method
