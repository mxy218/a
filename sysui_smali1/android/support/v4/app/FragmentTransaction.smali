.class public abstract Landroid/support/v4/app/FragmentTransaction;
.super Ljava/lang/Object;
.source "FragmentTransaction.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .param p1  # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2  # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .param p1  # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2  # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .param p1  # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract commit()I
.end method

.method public abstract detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .param p1  # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method
