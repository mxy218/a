.class Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$2;
.super Ljava/lang/Object;
.source "FaceSettingsRemoveButtonPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$2;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_66

    .line 121
    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$2;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    invoke-static {p2}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->access$400(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 122
    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$2;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    invoke-static {p2}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->access$300(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)Landroid/hardware/face/FaceManager;

    move-result-object p2

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$2;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    invoke-static {v1}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->access$200(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object p2

    .line 123
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "FaceSettings/Remove"

    if-eqz v1, :cond_2c

    const-string p0, "No faces"

    .line 124
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_2c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_4a

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple enrollments: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_4a
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$2;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->access$300(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)Landroid/hardware/face/FaceManager;

    move-result-object p1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/face/Face;

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$2;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    invoke-static {v0}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->access$200(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)I

    move-result v0

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$2;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    invoke-static {p0}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->access$600(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)Landroid/hardware/face/FaceManager$RemovalCallback;

    move-result-object p0

    invoke-virtual {p1, p2, v0, p0}, Landroid/hardware/face/FaceManager;->remove(Landroid/hardware/face/Face;ILandroid/hardware/face/FaceManager$RemovalCallback;)V

    goto :goto_74

    .line 134
    :cond_66
    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$2;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    invoke-static {p2}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->access$400(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 135
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$2;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->access$102(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;Z)Z

    :goto_74
    return-void
.end method
