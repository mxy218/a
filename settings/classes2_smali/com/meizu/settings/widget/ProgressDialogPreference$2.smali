.class Lcom/meizu/settings/widget/ProgressDialogPreference$2;
.super Ljava/lang/Object;
.source "ProgressDialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/widget/ProgressDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/ProgressDialogPreference;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$2;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 46
    iget-object p0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$2;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    invoke-static {p0}, Lcom/meizu/settings/widget/ProgressDialogPreference;->access$000(Lcom/meizu/settings/widget/ProgressDialogPreference;)V

    return-void
.end method
