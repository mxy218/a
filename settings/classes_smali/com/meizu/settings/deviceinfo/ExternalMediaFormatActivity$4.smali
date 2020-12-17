.class Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$4;
.super Ljava/lang/Object;
.source "ExternalMediaFormatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->showConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$4;->this$0:Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    const-string p1, "ExternalMediaFormatActivity"

    const-string/jumbo v0, "showConfirmDialog setOnCancelListener"

    .line 138
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$4;->this$0:Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->access$000(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 140
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$4;->this$0:Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_15
    return-void
.end method
