.class public Lcom/android/systemui/screenrecord/ScreenRecordDialog;
.super Landroid/app/Activity;
.source "ScreenRecordDialog.java"


# instance fields
.field private mShowTaps:Z

.field private mUseAudio:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private requestScreenCapture()V
    .registers 3

    const-string v0, "media_projection"

    .line 73
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    .line 75
    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    .line 77
    iget-boolean v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mUseAudio:Z

    if-eqz v1, :cond_1d

    .line 79
    iget-boolean v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mShowTaps:Z

    if-eqz v1, :cond_17

    const/16 v1, 0x12d

    goto :goto_19

    :cond_17
    const/16 v1, 0x12c

    .line 78
    :goto_19
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_29

    .line 82
    :cond_1d
    iget-boolean v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mShowTaps:Z

    if-eqz v1, :cond_24

    const/16 v1, 0xc9

    goto :goto_26

    :cond_24
    const/16 v1, 0xc8

    .line 81
    :goto_26
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_29
    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$ScreenRecordDialog(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/view/View;)V
    .registers 4

    .line 57
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mUseAudio:Z

    .line 58
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mShowTaps:Z

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Record button clicked: audio "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mUseAudio:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", taps "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mShowTaps:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScreenRecord"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-boolean p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mUseAudio:Z

    if-eqz p1, :cond_49

    const-string p1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_49

    const-string p3, "Requesting permission for audio"

    .line 63
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x18f

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_4c

    .line 67
    :cond_49
    invoke-direct {p0}, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->requestScreenCapture()V

    :goto_4c
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    const/16 v0, 0x12d

    const/4 v1, 0x1

    const/16 v2, 0xc9

    const/4 v3, 0x0

    if-eq p1, v2, :cond_d

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    move v4, v3

    goto :goto_e

    :cond_d
    :goto_d
    move v4, v1

    .line 88
    :goto_e
    iput-boolean v4, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mShowTaps:Z

    const/16 v4, 0xc8

    if-eq p1, v4, :cond_68

    if-eq p1, v2, :cond_68

    const/16 v2, 0x18f

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-eq p1, v2, :cond_40

    packed-switch p1, :pswitch_data_96

    goto/16 :goto_95

    .line 109
    :pswitch_21  #0x12b
    invoke-virtual {p0, v4}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3c

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$string;->screenrecord_permission_error:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_95

    .line 116
    :cond_3c
    invoke-direct {p0}, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->requestScreenCapture()V

    goto :goto_95

    .line 120
    :cond_40
    invoke-virtual {p0, v4}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    const-string p2, "android.permission.RECORD_AUDIO"

    .line 122
    invoke-virtual {p0, p2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p2

    if-nez p1, :cond_53

    if-eqz p2, :cond_4f

    goto :goto_53

    .line 130
    :cond_4f
    invoke-direct {p0}, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->requestScreenCapture()V

    goto :goto_95

    .line 126
    :cond_53
    :goto_53
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$string;->screenrecord_permission_error:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_95

    :cond_68
    :pswitch_68  #0x12c, 0x12d
    const/4 v2, -0x1

    if-ne p2, v2, :cond_81

    const/16 v2, 0x12c

    if-eq p1, v2, :cond_73

    if-ne p1, v0, :cond_72

    goto :goto_73

    :cond_72
    move v1, v3

    .line 96
    :cond_73
    :goto_73
    iput-boolean v1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mUseAudio:Z

    .line 98
    iget-boolean p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mUseAudio:Z

    iget-boolean v0, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mShowTaps:Z

    .line 99
    invoke-static {p0, p2, p3, p1, v0}, Lcom/android/systemui/screenrecord/RecordingService;->getStartIntent(Landroid/content/Context;ILandroid/content/Intent;ZZ)Landroid/content/Intent;

    move-result-object p1

    .line 98
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_92

    .line 103
    :cond_81
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$string;->screenrecord_permission_error:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 106
    :goto_92
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_95
    return-void

    :pswitch_data_96
    .packed-switch 0x12b
        :pswitch_21  #0000012b
        :pswitch_68  #0000012c
        :pswitch_68  #0000012d
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget p1, Lcom/android/systemui/R$layout;->screen_record_dialog:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 52
    sget p1, Lcom/android/systemui/R$id;->checkbox_mic:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 53
    sget v0, Lcom/android/systemui/R$id;->checkbox_taps:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 55
    sget v1, Lcom/android/systemui/R$id;->record_button:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 56
    new-instance v2, Lcom/android/systemui/screenrecord/-$$Lambda$ScreenRecordDialog$H-9qHbhSc2WYgQqs87Jfr3hmOoA;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/screenrecord/-$$Lambda$ScreenRecordDialog$H-9qHbhSc2WYgQqs87Jfr3hmOoA;-><init>(Lcom/android/systemui/screenrecord/ScreenRecordDialog;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
