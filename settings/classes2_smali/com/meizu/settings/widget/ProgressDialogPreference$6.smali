.class Lcom/meizu/settings/widget/ProgressDialogPreference$6;
.super Ljava/lang/Object;
.source "ProgressDialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/widget/ProgressDialogPreference;->showConfirmDialog()V
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

    .line 168
    iput-object p1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$6;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 171
    iget-object p1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$6;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    invoke-static {p1}, Lcom/meizu/settings/widget/ProgressDialogPreference;->access$300(Lcom/meizu/settings/widget/ProgressDialogPreference;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 172
    iget-object p1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$6;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    invoke-static {p1}, Lcom/meizu/settings/widget/ProgressDialogPreference;->access$800(Lcom/meizu/settings/widget/ProgressDialogPreference;)Lcom/meizu/settings/widget/ProgressDialogPreference$OnDialogStateListener;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 173
    iget-object p0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$6;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    invoke-static {p0}, Lcom/meizu/settings/widget/ProgressDialogPreference;->access$800(Lcom/meizu/settings/widget/ProgressDialogPreference;)Lcom/meizu/settings/widget/ProgressDialogPreference$OnDialogStateListener;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/meizu/settings/widget/ProgressDialogPreference$OnDialogStateListener;->onDialogDismissed(Z)V

    goto :goto_36

    .line 176
    :cond_1b
    iget-object p1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$6;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    invoke-static {p1}, Lcom/meizu/settings/widget/ProgressDialogPreference;->access$800(Lcom/meizu/settings/widget/ProgressDialogPreference;)Lcom/meizu/settings/widget/ProgressDialogPreference$OnDialogStateListener;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 177
    iget-object p1, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$6;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    invoke-static {p1}, Lcom/meizu/settings/widget/ProgressDialogPreference;->access$800(Lcom/meizu/settings/widget/ProgressDialogPreference;)Lcom/meizu/settings/widget/ProgressDialogPreference$OnDialogStateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/meizu/settings/widget/ProgressDialogPreference$OnDialogStateListener;->onDialogCanceled()V

    .line 178
    iget-object p0, p0, Lcom/meizu/settings/widget/ProgressDialogPreference$6;->this$0:Lcom/meizu/settings/widget/ProgressDialogPreference;

    invoke-static {p0}, Lcom/meizu/settings/widget/ProgressDialogPreference;->access$800(Lcom/meizu/settings/widget/ProgressDialogPreference;)Lcom/meizu/settings/widget/ProgressDialogPreference$OnDialogStateListener;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/meizu/settings/widget/ProgressDialogPreference$OnDialogStateListener;->onDialogDismissed(Z)V

    :cond_36
    :goto_36
    return-void
.end method
