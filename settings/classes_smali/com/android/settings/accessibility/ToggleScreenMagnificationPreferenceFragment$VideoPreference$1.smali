.class Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$1;
.super Ljava/lang/Object;
.source "ToggleScreenMagnificationPreferenceFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$1;->this$1:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 2

    const/4 p0, 0x1

    .line 85
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method
