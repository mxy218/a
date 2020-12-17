.class Lcom/meizu/settings/deviceinfo/FlymeMemory$4;
.super Ljava/lang/Object;
.source "FlymeMemory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/deviceinfo/FlymeMemory;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeMemory;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeMemory;)V
    .registers 2

    .line 411
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory$4;->this$0:Lcom/meizu/settings/deviceinfo/FlymeMemory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 413
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory$4;->this$0:Lcom/meizu/settings/deviceinfo/FlymeMemory;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/FlymeMemory;->access$300(Lcom/meizu/settings/deviceinfo/FlymeMemory;)V

    const/4 p0, 0x0

    throw p0
.end method
