.class Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$2;
.super Ljava/lang/Object;
.source "ExternalMediaFormatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 114
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$2;->this$0:Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 118
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$2;->this$0:Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->access$002(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;Z)Z

    .line 119
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$2;->this$0:Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->access$100(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;)V

    .line 120
    new-instance p1, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$FormatTask;

    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$2;->this$0:Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$FormatTask;-><init>(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$1;)V

    new-array p2, p2, [Ljava/lang/String;

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$2;->this$0:Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;

    invoke-static {p0}, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->access$200(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aput-object p0, p2, v0

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
