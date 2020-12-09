.class final Lcom/android/server/wm/ActivityResult;
.super Landroid/app/ResultInfo;
.source "ActivityResult.java"


# instance fields
.field final mFrom:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 6

    .line 30
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    .line 31
    iput-object p1, p0, Lcom/android/server/wm/ActivityResult;->mFrom:Lcom/android/server/wm/ActivityRecord;

    .line 32
    return-void
.end method
