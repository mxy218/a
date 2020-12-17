.class Lcom/android/settings/accessibility/ShortcutServicePickerFragment$FrameworkCandidateInfo;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "ShortcutServicePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ShortcutServicePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameworkCandidateInfo"
.end annotation


# instance fields
.field final mIconResId:I

.field final mKey:Ljava/lang/String;

.field final mToggleableFrameworkFeatureInfo:Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

.field final synthetic this$0:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;ILjava/lang/String;)V
    .registers 5

    .line 219
    iput-object p1, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$FrameworkCandidateInfo;->this$0:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    const/4 p1, 0x1

    .line 220
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/CandidateInfo;-><init>(Z)V

    .line 221
    iput-object p2, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$FrameworkCandidateInfo;->mToggleableFrameworkFeatureInfo:Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    .line 222
    iput p3, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$FrameworkCandidateInfo;->mIconResId:I

    .line 223
    iput-object p4, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$FrameworkCandidateInfo;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 1

    .line 238
    iget-object p0, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$FrameworkCandidateInfo;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$FrameworkCandidateInfo;->this$0:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$FrameworkCandidateInfo;->mIconResId:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$FrameworkCandidateInfo;->mToggleableFrameworkFeatureInfo:Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    iget-object p0, p0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$FrameworkCandidateInfo;->this$0:Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
