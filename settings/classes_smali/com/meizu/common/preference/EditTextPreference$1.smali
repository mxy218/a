.class Lcom/meizu/common/preference/EditTextPreference$1;
.super Ljava/lang/Object;
.source "EditTextPreference.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/preference/EditTextPreference;->initEditText(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/preference/EditTextPreference;


# direct methods
.method constructor <init>(Lcom/meizu/common/preference/EditTextPreference;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/meizu/common/preference/EditTextPreference$1;->this$0:Lcom/meizu/common/preference/EditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 163
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_24

    iget-object p1, p0, Lcom/meizu/common/preference/EditTextPreference$1;->this$0:Lcom/meizu/common/preference/EditTextPreference;

    .line 164
    invoke-static {p1}, Lcom/meizu/common/preference/EditTextPreference;->access$000(Lcom/meizu/common/preference/EditTextPreference;)Z

    move-result p1

    if-nez p1, :cond_24

    iget-object p1, p0, Lcom/meizu/common/preference/EditTextPreference$1;->this$0:Lcom/meizu/common/preference/EditTextPreference;

    .line 165
    invoke-static {p1}, Lcom/meizu/common/preference/EditTextPreference;->access$100(Lcom/meizu/common/preference/EditTextPreference;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->hasSelection()Z

    move-result p1

    if-nez p1, :cond_24

    .line 166
    iget-object p0, p0, Lcom/meizu/common/preference/EditTextPreference$1;->this$0:Lcom/meizu/common/preference/EditTextPreference;

    invoke-static {p0}, Lcom/meizu/common/preference/EditTextPreference;->access$100(Lcom/meizu/common/preference/EditTextPreference;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    :cond_24
    const/4 p0, 0x0

    return p0
.end method
