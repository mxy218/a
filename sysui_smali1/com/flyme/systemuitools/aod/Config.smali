.class public Lcom/flyme/systemuitools/aod/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final DEFAULT_COLOR:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 84
    fill-array-data v0, :array_a

    sput-object v0, Lcom/flyme/systemuitools/aod/Config;->DEFAULT_COLOR:[I

    return-void

    nop

    :array_a
    .array-data 4
        -0x666667
        -0x666667
    .end array-data
.end method
