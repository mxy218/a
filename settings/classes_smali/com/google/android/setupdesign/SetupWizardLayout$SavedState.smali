.class public Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SetupWizardLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupdesign/SetupWizardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field isProgressBarShown:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 415
    new-instance v0, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState$1;

    invoke-direct {v0}, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState$1;-><init>()V

    sput-object v0, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 405
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 398
    iput-boolean v0, p0, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;->isProgressBarShown:Z

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    :cond_d
    iput-boolean v0, p0, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;->isProgressBarShown:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    .line 401
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 398
    iput-boolean p1, p0, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;->isProgressBarShown:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 411
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 412
    iget-boolean p0, p0, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;->isProgressBarShown:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
