.class public Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "FaceSettingsRemoveButtonPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$Listener;,
        Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$ConfirmRemoveDialog;
    }
.end annotation


# static fields
.field static final KEY:Ljava/lang/String; = "security_settings_face_delete_faces_container"

.field private static final TAG:Ljava/lang/String; = "FaceSettings/Remove"


# instance fields
.field private mActivity:Lcom/android/settings/SettingsActivity;

.field private mButton:Landroid/widget/Button;

.field private final mContext:Landroid/content/Context;

.field private final mFaceManager:Landroid/hardware/face/FaceManager;

.field private mListener:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$Listener;

.field private final mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

.field private mRemoving:Z

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string/jumbo v0, "security_settings_face_delete_faces_container"

    .line 147
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    new-instance p2, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$1;-><init>(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    .line 116
    new-instance p2, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$2;

    invoke-direct {p2, p0}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$2;-><init>(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 142
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mContext:Landroid/content/Context;

    .line 143
    const-class p2, Landroid/hardware/face/FaceManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/face/FaceManager;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mFaceManager:Landroid/hardware/face/FaceManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)Landroid/content/Context;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;Z)Z
    .registers 2

    .line 46
    iput-boolean p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mRemoving:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)I
    .registers 1

    .line 46
    iget p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mUserId:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)Landroid/hardware/face/FaceManager;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mFaceManager:Landroid/hardware/face/FaceManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)Landroid/widget/Button;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$Listener;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mListener:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$Listener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)Landroid/hardware/face/FaceManager$RemovalCallback;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    return-object p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "security_settings_face_delete_faces_container"

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_20

    const/4 p1, 0x1

    .line 182
    iput-boolean p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mRemoving:Z

    .line 183
    new-instance p1, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$ConfirmRemoveDialog;

    invoke-direct {p1}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$ConfirmRemoveDialog;-><init>()V

    .line 184
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$ConfirmRemoveDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 185
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$ConfirmRemoveDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public setActivity(Lcom/android/settings/SettingsActivity;)V
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    return-void
.end method

.method public setListener(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$Listener;)V
    .registers 2

    .line 190
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mListener:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$Listener;

    return-void
.end method

.method public setUserId(I)V
    .registers 2

    .line 151
    iput p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mUserId:I

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .registers 3

    .line 156
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 158
    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    const v0, 0x7f0a063e

    .line 159
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mButton:Landroid/widget/Button;

    .line 160
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceSettings;->isAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 163
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mButton:Landroid/widget/Button;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2d

    .line 165
    :cond_24
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mButton:Landroid/widget/Button;

    iget-boolean p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mRemoving:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_2d
    return-void
.end method
