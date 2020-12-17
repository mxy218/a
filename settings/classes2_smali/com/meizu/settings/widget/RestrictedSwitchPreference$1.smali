.class Lcom/meizu/settings/widget/RestrictedSwitchPreference$1;
.super Ljava/lang/Object;
.source "RestrictedSwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/widget/RestrictedSwitchPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/RestrictedSwitchPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/RestrictedSwitchPreference;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/meizu/settings/widget/RestrictedSwitchPreference$1;->this$0:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 65
    iget-object p0, p0, Lcom/meizu/settings/widget/RestrictedSwitchPreference$1;->this$0:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    invoke-static {p0}, Lcom/meizu/settings/widget/RestrictedSwitchPreference;->access$000(Lcom/meizu/settings/widget/RestrictedSwitchPreference;)Lcom/meizu/settings/widget/RestrictedPreferenceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/widget/RestrictedPreferenceHelper;->performClick()Z

    return-void
.end method
