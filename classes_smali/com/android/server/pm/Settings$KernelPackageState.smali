.class final Lcom/android/server/pm/Settings$KernelPackageState;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KernelPackageState"
.end annotation


# instance fields
.field appId:I

.field excludedUserIds:[I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/Settings$1;)V
    .registers 2

    .line 282
    invoke-direct {p0}, Lcom/android/server/pm/Settings$KernelPackageState;-><init>()V

    return-void
.end method
