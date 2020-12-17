.class Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog$3;
.super Ljava/lang/Object;
.source "FlymeChooseFpDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;


# direct methods
.method constructor <init>(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog$3;->this$0:Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 101
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog$3;->this$0:Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;

    invoke-static {p0}, Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;->access$700(Lcom/meizu/settings/fingerprint/FlymeChooseFpDialog;)V

    return-void
.end method
