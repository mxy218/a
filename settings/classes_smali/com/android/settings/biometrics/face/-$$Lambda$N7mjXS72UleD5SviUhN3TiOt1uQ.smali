.class public final synthetic Lcom/android/settings/biometrics/face/-$$Lambda$N7mjXS72UleD5SviUhN3TiOt1uQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/face/FaceEnrollEducation;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/-$$Lambda$N7mjXS72UleD5SviUhN3TiOt1uQ;->f$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/settings/biometrics/face/-$$Lambda$N7mjXS72UleD5SviUhN3TiOt1uQ;->f$0:Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollEducation;->onSkipButtonClick(Landroid/view/View;)V

    return-void
.end method
