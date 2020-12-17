.class public abstract Landroid/support/v4/app/FragmentHostCallback;
.super Landroid/support/v4/app/FragmentContainer;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/FragmentContainer;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWindowAnimations:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 6
    .param p1  # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/FragmentContainer;-><init>()V

    .line 48
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 62
    iput-object p1, p0, Landroid/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    const-string p1, "context == null"

    .line 63
    invoke-static {p2, p1}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    const-string p1, "handler == null"

    .line 64
    invoke-static {p3, p1}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Landroid/os/Handler;

    iput-object p3, p0, Landroid/support/v4/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    .line 65
    iput p4, p0, Landroid/support/v4/app/FragmentHostCallback;->mWindowAnimations:I

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .registers 4
    .param p1  # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 57
    iget-object v0, p1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/support/v4/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method getActivity()Landroid/app/Activity;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 190
    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method getContext()Landroid/content/Context;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 195
    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method getFragmentManagerImpl()Landroid/support/v4/app/FragmentManagerImpl;
    .registers 1

    .line 204
    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    return-object p0
.end method

.method getHandler()Landroid/os/Handler;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 200
    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method abstract onAttachFragment(Landroid/support/v4/app/Fragment;)V
.end method

.method public abstract onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract onGetHost()Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public abstract onGetLayoutInflater()Landroid/view/LayoutInflater;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract onGetWindowAnimations()I
.end method

.method public abstract onHasWindowAnimations()Z
.end method

.method public abstract onRequestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .param p1  # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onShouldSaveFragmentState(Landroid/support/v4/app/Fragment;)Z
.end method

.method public abstract onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .param p1  # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .param p4  # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onStartIntentSenderFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .param p4  # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation
.end method

.method public abstract onSupportInvalidateOptionsMenu()V
.end method
