.class Lcom/meizu/settings/display/aod/AODStyleChooseActivity$2;
.super Ljava/lang/Object;
.source "AODStyleChooseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/aod/AODStyleChooseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/aod/AODStyleChooseActivity;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/aod/AODStyleChooseActivity;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/meizu/settings/display/aod/AODStyleChooseActivity$2;->this$0:Lcom/meizu/settings/display/aod/AODStyleChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 80
    iget-object p1, p0, Lcom/meizu/settings/display/aod/AODStyleChooseActivity$2;->this$0:Lcom/meizu/settings/display/aod/AODStyleChooseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/display/aod/AODStyleChooseActivity$2;->this$0:Lcom/meizu/settings/display/aod/AODStyleChooseActivity;

    .line 81
    invoke-static {v0}, Lcom/meizu/settings/display/aod/AODStyleChooseActivity;->access$000(Lcom/meizu/settings/display/aod/AODStyleChooseActivity;)I

    move-result v0

    const-string v1, "aod_style"

    .line 80
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 83
    iget-object v0, p0, Lcom/meizu/settings/display/aod/AODStyleChooseActivity$2;->this$0:Lcom/meizu/settings/display/aod/AODStyleChooseActivity;

    invoke-static {v0}, Lcom/meizu/settings/display/aod/AODStyleChooseActivity;->access$000(Lcom/meizu/settings/display/aod/AODStyleChooseActivity;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    iget-object v0, p0, Lcom/meizu/settings/display/aod/AODStyleChooseActivity$2;->this$0:Lcom/meizu/settings/display/aod/AODStyleChooseActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 85
    iget-object p0, p0, Lcom/meizu/settings/display/aod/AODStyleChooseActivity$2;->this$0:Lcom/meizu/settings/display/aod/AODStyleChooseActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
