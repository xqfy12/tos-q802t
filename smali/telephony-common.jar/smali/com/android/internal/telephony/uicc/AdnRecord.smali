.class public Lcom/android/internal/telephony/uicc/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/AdnRecord$Injector;
    }
.end annotation


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_TON_AND_NPI:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_CODE:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "AdnRecord"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb


# instance fields
.field IapforAnr:I
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field IapforEmail:I
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field anr:Ljava/lang/String;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field anrExtRecord:I
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field anrInxRecord:I
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field anrRecordExt:Ljava/lang/String;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field iap:I
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field mAdditionalNumbers:[Ljava/lang/String;

.field mAlphaTag:Ljava/lang/String;

.field public mEfid:I
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_ACCESS:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field mEmails:[Ljava/lang/String;

.field public mExtRecord:I
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_ACCESS:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field mNumber:Ljava/lang/String;

.field public mRecordNumber:I
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_ACCESS:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field srecid:Ljava/lang/String;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 460
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_CODE:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xff

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    .line 411
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 412
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 414
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 415
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 421
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:I

    .line 423
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 425
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 427
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrRecordExt:Ljava/lang/String;

    .line 429
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrInxRecord:I

    .line 548
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 549
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 550
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 551
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 552
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 553
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 554
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 555
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "emails"    # [Ljava/lang/String;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_CODE:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xff

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    .line 411
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 412
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 414
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 415
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 421
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:I

    .line 423
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 425
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 427
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrRecordExt:Ljava/lang/String;

    .line 429
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrInxRecord:I

    .line 514
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 515
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 516
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 517
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 518
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 519
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 520
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 521
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "emails"    # [Ljava/lang/String;
    .param p6, "anr"    # Ljava/lang/String;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    const/16 v1, 0xff

    .line 828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    .line 411
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 412
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 415
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 421
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:I

    .line 423
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 425
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 427
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrRecordExt:Ljava/lang/String;

    .line 429
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrInxRecord:I

    .line 829
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 830
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 831
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 832
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 833
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 834
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 835
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "emails"    # [Ljava/lang/String;
    .param p6, "additionalNumbers"    # [Ljava/lang/String;

    .prologue
    const/16 v1, 0xff

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    .line 411
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 412
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 415
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 421
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:I

    .line 423
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 425
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 427
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrRecordExt:Ljava/lang/String;

    .line 429
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrInxRecord:I

    .line 525
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 526
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 527
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 528
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 529
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 530
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 531
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 532
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "emails"    # [Ljava/lang/String;
    .param p6, "additionalNumbers"    # [Ljava/lang/String;
    .param p7, "anr"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0xff

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    .line 411
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 412
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 415
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 421
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:I

    .line 423
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 425
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 427
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrRecordExt:Ljava/lang/String;

    .line 429
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrInxRecord:I

    .line 537
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 538
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 539
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 540
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 541
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 542
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 543
    iput-object p7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 544
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 2
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "record"    # [B

    .prologue
    const/16 v1, 0xff

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    .line 411
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 412
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 415
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 421
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:I

    .line 423
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 425
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 427
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrRecordExt:Ljava/lang/String;

    .line 429
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrInxRecord:I

    .line 495
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 496
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 497
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->parseRecord([B)V

    .line 498
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .param p1, "efid"    # I
    .param p2, "record"    # [B
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    const/16 v1, 0xff

    .line 823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    .line 411
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 412
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 415
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 421
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:I

    .line 423
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 425
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 427
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrRecordExt:Ljava/lang/String;

    .line 429
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrInxRecord:I

    .line 824
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 825
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->parseAnrRecord([B)V

    .line 826
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 501
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "IapforEmail"    # I
    .param p4, "IapforAnr"    # I
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0xff

    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    .line 411
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 412
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 414
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 415
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 421
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:I

    .line 423
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 425
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 427
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrRecordExt:Ljava/lang/String;

    .line 429
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrInxRecord:I

    .line 807
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 808
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 809
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 810
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 811
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 812
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 813
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->IapforEmail:I

    .line 814
    iput p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->IapforAnr:I

    .line 816
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "anr"    # Ljava/lang/String;
    .param p4, "srecid"    # Ljava/lang/String;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    const/16 v1, 0xff

    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    .line 411
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 412
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 415
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 421
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:I

    .line 423
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 425
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 427
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrRecordExt:Ljava/lang/String;

    .line 429
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrInxRecord:I

    .line 799
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 800
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 801
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 802
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    .line 803
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "emails"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 505
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "emails"    # [Ljava/lang/String;
    .param p4, "anr"    # Ljava/lang/String;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 819
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "emails"    # [Ljava/lang/String;
    .param p4, "anr"    # Ljava/lang/String;
    .param p5, "srecid"    # Ljava/lang/String;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    const/16 v1, 0xff

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    .line 411
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 412
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 415
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 421
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:I

    .line 423
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 425
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 427
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrRecordExt:Ljava/lang/String;

    .line 429
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrInxRecord:I

    .line 791
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 792
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 793
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 794
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 795
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    .line 796
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "emails"    # [Ljava/lang/String;
    .param p4, "additionalNumbers"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 509
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "record"    # [B

    .prologue
    const/4 v0, 0x0

    .line 491
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 492
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2
    .param p1, "emails"    # [Ljava/lang/String;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    const/16 v1, 0xff

    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    .line 411
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 412
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 415
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 421
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:I

    .line 423
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 425
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 427
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrRecordExt:Ljava/lang/String;

    .line 429
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrInxRecord:I

    .line 787
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 788
    return-void
.end method

.method private parseAnrRecord([B)V
    .locals 0
    .param p1, "anrRecord"    # [B
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 778
    # invokes: Lcom/android/internal/telephony/uicc/AdnRecord$Injector;->parseAnrRecord(Lcom/android/internal/telephony/uicc/AdnRecord;[B)V
    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord$Injector;->access$000(Lcom/android/internal/telephony/uicc/AdnRecord;[B)V

    .line 779
    return-void
.end method

.method private parseRecord([B)V
    .locals 6
    .param p1, "record"    # [B
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_CODE:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 731
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0xe

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 734
    array-length v3, p1

    add-int/lit8 v1, v3, -0xe

    .line 736
    .local v1, "footerOffset":I
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .line 738
    .local v2, "numberLength":I
    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    .line 740
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 768
    .end local v1    # "footerOffset":I
    .end local v2    # "numberLength":I
    :goto_0
    return-void

    .line 751
    .restart local v1    # "footerOffset":I
    .restart local v2    # "numberLength":I
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 755
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 757
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 758
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 759
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 760
    .end local v1    # "footerOffset":I
    .end local v2    # "numberLength":I
    :catch_0
    move-exception v0

    .line 761
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v3, "AdnRecord"

    const-string v4, "Error parsing AdnRecord"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 762
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 763
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 764
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 765
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 766
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .prologue
    .line 600
    if-ne p0, p1, :cond_0

    .line 601
    const/4 v0, 0x1

    .line 609
    :goto_0
    return v0

    .line 603
    :cond_0
    if-nez p0, :cond_1

    .line 604
    const-string p0, ""

    .line 606
    :cond_1
    if-nez p1, :cond_2

    .line 607
    const-string p1, ""

    .line 609
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public appendAnrExtRecord([B)V
    .locals 0
    .param p1, "anrExtRecord"    # [B
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 783
    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord$Injector;->appendAnrExtRecord(Lcom/android/internal/telephony/uicc/AdnRecord;[B)V

    .line 784
    return-void
.end method

.method public appendExtRecord([B)V
    .locals 4
    .param p1, "extRecord"    # [B

    .prologue
    const/4 v3, 0x2

    .line 698
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 707
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "AdnRecord"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAdnString(I)[B
    .locals 10
    .param p1, "recordSize"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 648
    add-int/lit8 v3, p1, -0xe

    .line 651
    .local v3, "footerOffset":I
    new-array v0, p1, [B

    .line 652
    .local v0, "adnString":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_0

    .line 653
    aput-byte v8, v0, v4

    .line 652
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 656
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 657
    const-string v5, "AdnRecord"

    const-string v6, "[buildAdnString] Empty dialing number"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    .end local v0    # "adnString":[B
    :cond_1
    :goto_1
    return-object v0

    .line 659
    .restart local v0    # "adnString":[B
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x14

    if-le v6, v7, :cond_3

    .line 661
    const-string v6, "AdnRecord"

    const-string v7, "[buildAdnString] Max length of dialing number is 20"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 663
    goto :goto_1

    .line 664
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v3, :cond_4

    .line 665
    const-string v6, "AdnRecord"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[buildAdnString] Max length of tag is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 667
    goto :goto_1

    .line 669
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 670
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 672
    .local v1, "bcdNumber":[B
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    invoke-static {v1, v9, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 675
    add-int/lit8 v5, v3, 0x0

    array-length v6, v1

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 678
    .end local v1    # "bcdNumber":[B
    :cond_5
    add-int/lit8 v5, v3, 0xc

    aput-byte v8, v0, v5

    .line 680
    add-int/lit8 v5, v3, 0xd

    aput-byte v8, v0, v5

    .line 683
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 684
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->stringToAdnStringField(Ljava/lang/String;)[B

    move-result-object v2

    .line 685
    .local v2, "byteTag":[B
    array-length v5, v2

    invoke-static {v2, v9, v0, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public buildAdnString(II)[B
    .locals 1
    .param p1, "recordSize"    # I
    .param p2, "extRecId"    # I
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 893
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecord$Injector;->buildAdnString(Lcom/android/internal/telephony/uicc/AdnRecord;II)[B

    move-result-object v0

    return-object v0
.end method

.method public buildAnrEXT1String(I)[B
    .locals 1
    .param p1, "recordSize"    # I
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 924
    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord$Injector;->buildAnrEXT1String(Lcom/android/internal/telephony/uicc/AdnRecord;I)[B

    move-result-object v0

    return-object v0
.end method

.method public buildAnrString(IIIII)[B
    .locals 1
    .param p1, "recordSize"    # I
    .param p2, "recordNumber"    # I
    .param p3, "anrNumber"    # I
    .param p4, "sfi"    # I
    .param p5, "anrExtRecId"    # I
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 916
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/uicc/AdnRecord$Injector;->buildAnrString(Lcom/android/internal/telephony/uicc/AdnRecord;IIIII)[B

    move-result-object v0

    return-object v0
.end method

.method public buildEXT1String(I)[B
    .locals 1
    .param p1, "recordSize"    # I
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 920
    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord$Injector;->buildEXT1String(Lcom/android/internal/telephony/uicc/AdnRecord;I)[B

    move-result-object v0

    return-object v0
.end method

.method public buildEmailString(IIII)[B
    .locals 1
    .param p1, "recordSize"    # I
    .param p2, "recordNumber"    # I
    .param p3, "Emailadnnumber"    # I
    .param p4, "sfi"    # I
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 898
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/AdnRecord$Injector;->buildEmailString(Lcom/android/internal/telephony/uicc/AdnRecord;IIII)[B

    move-result-object v0

    return-object v0
.end method

.method public buildIapString(IIIII)[B
    .locals 1
    .param p1, "recordSizeIap"    # I
    .param p2, "IapforEmail"    # I
    .param p3, "IapforAnr"    # I
    .param p4, "Emailiniap"    # I
    .param p5, "Anriniap"    # I
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 905
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/internal/telephony/uicc/AdnRecord$Injector;->buildIapString(IIIII)[B

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 622
    const/4 v0, 0x0

    return v0
.end method

.method public getAdditionalNumbers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    return-object v0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getAnr()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    return-object v0
.end method

.method public getAnrExtNumber()I
    .locals 1
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 881
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    return v0
.end method

.method public getAnrExtRec()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrRecordExt:Ljava/lang/String;

    return-object v0
.end method

.method public getAnrIndex()I
    .locals 1
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 885
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrInxRecord:I

    return v0
.end method

.method public getAnrNumbers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    return-object v0
.end method

.method public getExtNumber()I
    .locals 1
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 872
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRecid()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    return-object v0
.end method

.method public hasAnrExtendedRecord()Z
    .locals 2
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 868
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 595
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnrEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 2
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmailEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 1
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 939
    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord$Injector;->isEmailEqual(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_CODE:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 591
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/AdnRecord$Injector;->isEmpty(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v0

    return v0
.end method

.method public isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 2
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_CODE:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFDNEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 2
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsimEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 1
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 944
    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord$Injector;->isUsimEqual(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v0

    return v0
.end method

.method public setAdditionalNumbers([Ljava/lang/String;)V
    .locals 0
    .param p1, "additionalNumbers"    # [Ljava/lang/String;

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 582
    return-void
.end method

.method public setAlphaTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "alphaTag"    # Ljava/lang/String;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 850
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 851
    return-void
.end method

.method public setAnr(Ljava/lang/String;)V
    .locals 0
    .param p1, "anr"    # Ljava/lang/String;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 864
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 865
    return-void
.end method

.method public setAnrExtNumber(I)V
    .locals 0
    .param p1, "index"    # I
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 877
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 878
    return-void
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .param p1, "emails"    # [Ljava/lang/String;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_CODE:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 573
    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord$Injector;->checkEmail(Lcom/android/internal/telephony/uicc/AdnRecord;[Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method public setExtNumber(I)V
    .locals 0
    .param p1, "index"    # I
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 858
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 859
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 854
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 855
    return-void
.end method

.method public setRecid(Ljava/lang/String;)V
    .locals 0
    .param p1, "srecid"    # Ljava/lang/String;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 846
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    .line 847
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_CODE:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 627
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 634
    return-void
.end method
