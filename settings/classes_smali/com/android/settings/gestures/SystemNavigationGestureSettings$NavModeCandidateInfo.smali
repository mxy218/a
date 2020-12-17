.class Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "SystemNavigationGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/gestures/SystemNavigationGestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NavModeCandidateInfo"
.end annotation


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mSummary:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V
    .registers 5

    .line 427
    invoke-direct {p0, p4}, Lcom/android/settingslib/widget/CandidateInfo;-><init>(Z)V

    .line 428
    iput-object p1, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;->mLabel:Ljava/lang/CharSequence;

    .line 429
    iput-object p2, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;->mSummary:Ljava/lang/CharSequence;

    .line 430
    iput-object p3, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 1

    .line 449
    iget-object p0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .registers 1

    .line 435
    iget-object p0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public loadSummary()Ljava/lang/CharSequence;
    .registers 1

    .line 439
    iget-object p0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$NavModeCandidateInfo;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method
