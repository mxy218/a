.class Lcom/meizu/server/FindPhoneMonitor$5;
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

    .line 247
    iput-object p1, p0, Lcom/meizu/server/FindPhoneMonitor$5;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialogInterface"  # Landroid/content/DialogInterface;
    .param p2, "i"  # I

    .line 250
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 251
    return-void
.end method
