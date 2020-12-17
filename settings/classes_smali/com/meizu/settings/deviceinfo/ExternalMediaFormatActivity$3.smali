.class Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$3;
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

    .line 124
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$3;->this$0:Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 128
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$3;->this$0:Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->access$002(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;Z)Z

    .line 129
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$3;->this$0:Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;->access$100(Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;)V

    const-string p1, "ExternalMediaFormatActivity"

    const-string/jumbo p2, "showConfirmDialog setNegativeButton click"

    .line 130
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity$3;->this$0:Lcom/meizu/settings/deviceinfo/ExternalMediaFormatActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
