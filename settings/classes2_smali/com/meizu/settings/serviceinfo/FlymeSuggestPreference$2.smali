.class Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference$2;
.super Ljava/lang/Object;
.source "FlymeSuggestPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->initSuggestEditText(Landroid/widget/EditText;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;

.field final synthetic val$edit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;Landroid/widget/EditText;)V
    .registers 3

    .line 125
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference$2;->this$0:Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;

    iput-object p2, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference$2;->val$edit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 141
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference$2;->this$0:Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;

    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference$2;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    invoke-static {p1, v0}, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->access$102(Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;I)I

    .line 142
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference$2;->this$0:Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;

    invoke-virtual {p1}, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->refreshLayout()V

    .line 143
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference$2;->this$0:Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;

    invoke-static {p1}, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->access$200(Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;)Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 144
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference$2;->this$0:Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;

    invoke-static {p0}, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->access$200(Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;)Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->notifyPreferenceChanged()V

    :cond_21
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
