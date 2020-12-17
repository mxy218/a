.class public Lcom/android/settings/notification/NotificationAssistantPicker$CandidateNone;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "NotificationAssistantPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationAssistantPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CandidateNone"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    .line 150
    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/CandidateInfo;-><init>(Z)V

    .line 151
    iput-object p1, p0, Lcom/android/settings/notification/NotificationAssistantPicker$CandidateNone;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 156
    iget-object p0, p0, Lcom/android/settings/notification/NotificationAssistantPicker$CandidateNone;->mContext:Landroid/content/Context;

    const v0, 0x7f120eff

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
