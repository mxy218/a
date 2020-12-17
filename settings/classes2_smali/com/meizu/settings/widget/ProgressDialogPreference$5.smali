.class Lcom/meizu/settings/widget/ProgressDialogPreference$5;
.super Ljava/lang/Object;
.source "ProgressDialogPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/widget/ProgressDialogPreference;->OnFinishedLoading(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/ProgressDialogPreference;Z)V
    .registers 3

    .line 135
    iput-object p1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$5;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    iput-boolean p2, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$5;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 138
    iget-boolean v0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$5;->val$result:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$5;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    invoke-static {v0}, Lcom/meizu/settings/widget/ProgressDialogPreference;->access$500(Lcom/meizu/settings/widget/ProgressDialogPreference;)I

    move-result v0

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$5;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    invoke-static {v0}, Lcom/meizu/settings/widget/ProgressDialogPreference;->access$600(Lcom/meizu/settings/widget/ProgressDialogPreference;)I

    move-result v0

    .line 139
    :goto_11
    iget-object p0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$5;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    invoke-static {p0}, Lcom/meizu/settings/widget/ProgressDialogPreference;->access$700(Lcom/meizu/settings/widget/ProgressDialogPreference;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/meizu/settings/utils/MzUtils;->showSlideNotice(Landroid/content/Context;I)V

    return-void
.end method
