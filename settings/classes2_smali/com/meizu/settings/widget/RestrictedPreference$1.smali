.class Lcom/meizu/settings/widget/RestrictedPreference$1;
.super Ljava/lang/Object;
.source "RestrictedPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/widget/RestrictedPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/RestrictedPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/RestrictedPreference;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/meizu/settings/widget/RestrictedPreference$1;->this$0:Lcom/meizu/settings/widget/RestrictedPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 69
    iget-object p0, p0, Lcom/meizu/settings/widget/RestrictedPreference$1;->this$0:Lcom/meizu/settings/widget/RestrictedPreference;

    invoke-static {p0}, Lcom/meizu/settings/widget/RestrictedPreference;->access$000(Lcom/meizu/settings/widget/RestrictedPreference;)Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->performClick()Z

    return-void
.end method
