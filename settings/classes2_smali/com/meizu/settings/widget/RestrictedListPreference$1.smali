.class Lcom/meizu/settings/widget/RestrictedListPreference$1;
.super Ljava/lang/Object;
.source "RestrictedListPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/widget/RestrictedListPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/RestrictedListPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/RestrictedListPreference;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/meizu/settings/widget/RestrictedListPreference$1;->this$0:Lcom/meizu/settings/widget/RestrictedListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 57
    iget-object p0, p0, Lcom/meizu/settings/widget/RestrictedListPreference$1;->this$0:Lcom/meizu/settings/widget/RestrictedListPreference;

    invoke-static {p0}, Lcom/meizu/settings/widget/RestrictedListPreference;->access$000(Lcom/meizu/settings/widget/RestrictedListPreference;)Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->performClick()Z

    return-void
.end method
