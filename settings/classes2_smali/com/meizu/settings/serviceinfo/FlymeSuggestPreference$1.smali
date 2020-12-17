.class Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference$1;
.super Ljava/lang/Object;
.source "FlymeSuggestPreference.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference$1;->this$0:Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3

    .line 53
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference$1;->this$0:Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;

    invoke-static {p1}, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->access$000(Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference$1;->this$0:Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;

    invoke-static {p1}, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->access$000(Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference$1;->this$0:Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;

    invoke-static {p0}, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->access$000(Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
