.class public Lcom/android/settingslib/bluetooth/MeizuDeviceInfo;
.super Ljava/lang/Object;
.source "MeizuDeviceInfo.java"


# static fields
.field private static mDarkBmpMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settingslib/bluetooth/MeizuDeviceInfo;->mDarkBmpMap:Ljava/util/HashMap;

    return-void
.end method
