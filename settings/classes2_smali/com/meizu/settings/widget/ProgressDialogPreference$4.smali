.class Lcom/meizu/settings/widget/ProgressDialogPreference$4;
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


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/ProgressDialogPreference;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$4;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$4;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    invoke-static {p0}, Lcom/meizu/settings/widget/ProgressDialogPreference;->access$400(Lcom/meizu/settings/widget/ProgressDialogPreference;)V

    return-void
.end method
