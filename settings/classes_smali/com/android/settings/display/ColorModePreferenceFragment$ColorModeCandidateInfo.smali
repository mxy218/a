.class Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "ColorModePreferenceFragment.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/ColorModePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ColorModeCandidateInfo"
.end annotation


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mLabel:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V
    .registers 4

    .line 186
    invoke-direct {p0, p3}, Lcom/android/settingslib/widget/CandidateInfo;-><init>(Z)V

    .line 187
    iput-object p1, p0, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;->mLabel:Ljava/lang/CharSequence;

    .line 188
    iput-object p2, p0, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 1

    .line 203
    iget-object p0, p0, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .registers 1

    .line 193
    iget-object p0, p0, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method
