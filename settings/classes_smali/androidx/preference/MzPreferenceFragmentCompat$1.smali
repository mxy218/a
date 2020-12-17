.class Landroidx/preference/MzPreferenceFragmentCompat$1;
.super Landroid/os/Handler;
.source "MzPreferenceFragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/MzPreferenceFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/MzPreferenceFragmentCompat;


# direct methods
.method constructor <init>(Landroidx/preference/MzPreferenceFragmentCompat;)V
    .registers 2

    .line 124
    iput-object p1, p0, Landroidx/preference/MzPreferenceFragmentCompat$1;->this$0:Landroidx/preference/MzPreferenceFragmentCompat;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 127
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_b

    .line 129
    :cond_6
    iget-object p0, p0, Landroidx/preference/MzPreferenceFragmentCompat$1;->this$0:Landroidx/preference/MzPreferenceFragmentCompat;

    invoke-virtual {p0}, Landroidx/preference/MzPreferenceFragmentCompat;->bindPreferences()V

    :goto_b
    return-void
.end method
