.class Lcom/android/settings/notification/ZenOnboardingActivity$1;
.super Ljava/lang/Object;
.source "ZenOnboardingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenOnboardingActivity;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenOnboardingActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenOnboardingActivity;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/android/settings/notification/ZenOnboardingActivity$1;->this$0:Lcom/android/settings/notification/ZenOnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 83
    iget-object p1, p0, Lcom/android/settings/notification/ZenOnboardingActivity$1;->this$0:Lcom/android/settings/notification/ZenOnboardingActivity;

    iget-object p1, p1, Lcom/android/settings/notification/ZenOnboardingActivity;->mKeepCurrentSettingButton:Landroid/widget/RadioButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 84
    iget-object p0, p0, Lcom/android/settings/notification/ZenOnboardingActivity$1;->this$0:Lcom/android/settings/notification/ZenOnboardingActivity;

    iget-object p0, p0, Lcom/android/settings/notification/ZenOnboardingActivity;->mNewSettingButton:Landroid/widget/RadioButton;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method
